"use strict";var u=Object.defineProperty;var w=Object.getOwnPropertyDescriptor;var f=Object.getOwnPropertyNames;var g=Object.prototype.hasOwnProperty;var v=(s,t)=>{for(var e in t)u(s,e,{get:t[e],enumerable:!0})},I=(s,t,e,a)=>{if(t&&typeof t=="object"||typeof t=="function")for(let o of f(t))!g.call(s,o)&&o!==e&&u(s,o,{get:()=>t[o],enumerable:!(a=w(t,o))||a.enumerable});return s};var L=s=>I(u({},"__esModule",{value:!0}),s);var P={};v(P,{default:()=>d});module.exports=L(P);var m=require("@raycast/api");var l=require("child_process"),y=require("util"),i=require("@raycast/api"),c=(0,y.promisify)(l.exec),b=async()=>c(`/bin/chmod u+x ${i.environment.assetsPath}/keyboardSwitcher`),x=async()=>await Promise.all([c(`${i.environment.assetsPath}/keyboardSwitcher json`),c(`${i.environment.assetsPath}/keyboardSwitcher get`)]),r=class p{constructor(t,e){this.id=t;this.title=e}get active(){return this.title===r.activeInput}async activate(){if((await c(`${i.environment.assetsPath}/keyboardSwitcher select '${this.id}'`)).stdout.split(`
`)[1]!=="found")throw new Error(`Layout "${this.title}" Not Found`)}static async getAll(){await b();let[t,e]=await x();r.activeInput=e.stdout.split(`
`)[0];let a=JSON.parse(t.stdout),o=[];for(let n of a)o.push(new p(n.arg,n.title));return o.sort((n,h)=>n.title.localeCompare(h.title))}static async setNextInput(){let t=await r.getAll(),e=t[0];for(let a=0;a<t.length;a++)if(t[a].active){e=a+1<t.length?t[a+1]:e;break}return await e.activate(),e}};async function d(){let s=await r.setNextInput();await(0,m.showHUD)(`\u2328\uFE0F Activated '${s.title}' Layout`)}0&&(module.exports={});
