window._agl = window._agl || [];
window._agl.push(["ext", {
    xAngeliaLogid: "0585138400439455754",
    bclid: "10750957602632095769",
    bdsfrcvid: "NItOJeC62rbFxnvwUsHQhXxwweo83InTH6aoB93B97GGr8ID71D3EG0P_f8g0KubbmzkogKKKmOTH1DF_2uxOjjg8UtVJeC6EG0Ptf8g0M5"
}]);
!function() {
    "use strict";
    function z(t) {
        return (z = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function(t) {
            return typeof t
        }
        : function(t) {
            return t && "function" == typeof Symbol && t.constructor === Symbol && t !== Symbol.prototype ? "symbol" : typeof t
        }
        )(t)
    }
    function l(t, e) {
        if (!(t instanceof e))
            throw new TypeError("Cannot call a class as a function")
    }
    function r(t, e) {
        for (var n = 0; n < e.length; n++) {
            var r = e[n];
            r.enumerable = r.enumerable || !1,
            r.configurable = !0,
            "value"in r && (r.writable = !0),
            Object.defineProperty(t, r.key, r)
        }
    }
    function e(t, e, n) {
        return e && r(t.prototype, e),
        n && r(t, n),
        t
    }
    function s(t, e, n) {
        return e in t ? Object.defineProperty(t, e, {
            value: n,
            enumerable: !0,
            configurable: !0,
            writable: !0
        }) : t[e] = n,
        t
    }
    function f(e) {
        for (var t = 1; t < arguments.length; t++) {
            var n = null != arguments[t] ? arguments[t] : {}
              , r = Object.keys(n);
            "function" == typeof Object.getOwnPropertySymbols && (r = r.concat(Object.getOwnPropertySymbols(n).filter(function(t) {
                return Object.getOwnPropertyDescriptor(n, t).enumerable
            }))),
            r.forEach(function(t) {
                s(e, t, n[t])
            })
        }
        return e
    }
    function n(t, e) {
        if ("function" != typeof e && null !== e)
            throw new TypeError("Super expression must either be null or a function");
        t.prototype = Object.create(e && e.prototype, {
            constructor: {
                value: t,
                writable: !0,
                configurable: !0
            }
        }),
        e && i(t, e)
    }
    function o(t) {
        return (o = Object.setPrototypeOf ? Object.getPrototypeOf : function(t) {
            return t.__proto__ || Object.getPrototypeOf(t)
        }
        )(t)
    }
    function i(t, e) {
        return (i = Object.setPrototypeOf || function(t, e) {
            return t.__proto__ = e,
            t
        }
        )(t, e)
    }
    function a(t) {
        if (void 0 === t)
            throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
        return t
    }
    function u(t, e) {
        return !e || "object" != typeof e && "function" != typeof e ? a(t) : e
    }
    function h(t, e) {
        return function(t) {
            if (Array.isArray(t))
                return t
        }(t) || function(t, e) {
            var n = []
              , r = !0
              , o = !1
              , i = void 0;
            try {
                for (var a, s = t[Symbol.iterator](); !(r = (a = s.next()).done) && (n.push(a.value),
                !e || n.length !== e); r = !0)
                    ;
            } catch (t) {
                o = !0,
                i = t
            } finally {
                try {
                    r || null == s.return || s.return()
                } finally {
                    if (o)
                        throw i
                }
            }
            return n
        }(t, e) || function() {
            throw new TypeError("Invalid attempt to destructure non-iterable instance")
        }()
    }
    function d(t) {
        return function(t) {
            if (Array.isArray(t)) {
                for (var e = 0, n = new Array(t.length); e < t.length; e++)
                    n[e] = t[e];
                return n
            }
        }(t) || function(t) {
            if (Symbol.iterator in Object(t) || "[object Arguments]" === Object.prototype.toString.call(t))
                return Array.from(t)
        }(t) || function() {
            throw new TypeError("Invalid attempt to spread non-iterable instance")
        }()
    }
    var v = "undefined" != typeof globalThis ? globalThis : "undefined" != typeof window ? window : "undefined" != typeof global ? global : "undefined" != typeof self ? self : {};
    function t(t, e) {
        return t(e = {
            exports: {}
        }, e.exports),
        e.exports
    }
    var c = t(function(t) {
        function f(t, e) {
            var n = (65535 & t) + (65535 & e);
            return (t >> 16) + (e >> 16) + (n >> 16) << 16 | 65535 & n
        }
        function s(t, e, n, r, o, i) {
            return f(function(t, e) {
                return t << e | t >>> 32 - e
            }(f(f(e, t), f(r, i)), o), n)
        }
        function h(t, e, n, r, o, i, a) {
            return s(e & n | ~e & r, t, e, o, i, a)
        }
        function d(t, e, n, r, o, i, a) {
            return s(e & r | n & ~r, t, e, o, i, a)
        }
        function p(t, e, n, r, o, i, a) {
            return s(e ^ n ^ r, t, e, o, i, a)
        }
        function g(t, e, n, r, o, i, a) {
            return s(n ^ (e | ~r), t, e, o, i, a)
        }
        function u(t, e) {
            var n, r, o, i, a;
            t[e >> 5] |= 128 << e % 32,
            t[14 + (e + 64 >>> 9 << 4)] = e;
            var s = 1732584193
              , u = -271733879
              , c = -1732584194
              , l = 271733878;
            for (n = 0; n < t.length; n += 16)
                u = g(u = g(u = g(u = g(u = p(u = p(u = p(u = p(u = d(u = d(u = d(u = d(u = h(u = h(u = h(u = h(o = u, c = h(i = c, l = h(a = l, s = h(r = s, u, c, l, t[n], 7, -680876936), u, c, t[n + 1], 12, -389564586), s, u, t[n + 2], 17, 606105819), l, s, t[n + 3], 22, -1044525330), c = h(c, l = h(l, s = h(s, u, c, l, t[n + 4], 7, -176418897), u, c, t[n + 5], 12, 1200080426), s, u, t[n + 6], 17, -1473231341), l, s, t[n + 7], 22, -45705983), c = h(c, l = h(l, s = h(s, u, c, l, t[n + 8], 7, 1770035416), u, c, t[n + 9], 12, -1958414417), s, u, t[n + 10], 17, -42063), l, s, t[n + 11], 22, -1990404162), c = h(c, l = h(l, s = h(s, u, c, l, t[n + 12], 7, 1804603682), u, c, t[n + 13], 12, -40341101), s, u, t[n + 14], 17, -1502002290), l, s, t[n + 15], 22, 1236535329), c = d(c, l = d(l, s = d(s, u, c, l, t[n + 1], 5, -165796510), u, c, t[n + 6], 9, -1069501632), s, u, t[n + 11], 14, 643717713), l, s, t[n], 20, -373897302), c = d(c, l = d(l, s = d(s, u, c, l, t[n + 5], 5, -701558691), u, c, t[n + 10], 9, 38016083), s, u, t[n + 15], 14, -660478335), l, s, t[n + 4], 20, -405537848), c = d(c, l = d(l, s = d(s, u, c, l, t[n + 9], 5, 568446438), u, c, t[n + 14], 9, -1019803690), s, u, t[n + 3], 14, -187363961), l, s, t[n + 8], 20, 1163531501), c = d(c, l = d(l, s = d(s, u, c, l, t[n + 13], 5, -1444681467), u, c, t[n + 2], 9, -51403784), s, u, t[n + 7], 14, 1735328473), l, s, t[n + 12], 20, -1926607734), c = p(c, l = p(l, s = p(s, u, c, l, t[n + 5], 4, -378558), u, c, t[n + 8], 11, -2022574463), s, u, t[n + 11], 16, 1839030562), l, s, t[n + 14], 23, -35309556), c = p(c, l = p(l, s = p(s, u, c, l, t[n + 1], 4, -1530992060), u, c, t[n + 4], 11, 1272893353), s, u, t[n + 7], 16, -155497632), l, s, t[n + 10], 23, -1094730640), c = p(c, l = p(l, s = p(s, u, c, l, t[n + 13], 4, 681279174), u, c, t[n], 11, -358537222), s, u, t[n + 3], 16, -722521979), l, s, t[n + 6], 23, 76029189), c = p(c, l = p(l, s = p(s, u, c, l, t[n + 9], 4, -640364487), u, c, t[n + 12], 11, -421815835), s, u, t[n + 15], 16, 530742520), l, s, t[n + 2], 23, -995338651), c = g(c, l = g(l, s = g(s, u, c, l, t[n], 6, -198630844), u, c, t[n + 7], 10, 1126891415), s, u, t[n + 14], 15, -1416354905), l, s, t[n + 5], 21, -57434055), c = g(c, l = g(l, s = g(s, u, c, l, t[n + 12], 6, 1700485571), u, c, t[n + 3], 10, -1894986606), s, u, t[n + 10], 15, -1051523), l, s, t[n + 1], 21, -2054922799), c = g(c, l = g(l, s = g(s, u, c, l, t[n + 8], 6, 1873313359), u, c, t[n + 15], 10, -30611744), s, u, t[n + 6], 15, -1560198380), l, s, t[n + 13], 21, 1309151649), c = g(c, l = g(l, s = g(s, u, c, l, t[n + 4], 6, -145523070), u, c, t[n + 11], 10, -1120210379), s, u, t[n + 2], 15, 718787259), l, s, t[n + 9], 21, -343485551),
                s = f(s, r),
                u = f(u, o),
                c = f(c, i),
                l = f(l, a);
            return [s, u, c, l]
        }
        function c(t) {
            var e, n = "", r = 32 * t.length;
            for (e = 0; e < r; e += 8)
                n += String.fromCharCode(t[e >> 5] >>> e % 32 & 255);
            return n
        }
        function l(t) {
            var e, n = [];
            for (n[(t.length >> 2) - 1] = void 0,
            e = 0; e < n.length; e += 1)
                n[e] = 0;
            var r = 8 * t.length;
            for (e = 0; e < r; e += 8)
                n[e >> 5] |= (255 & t.charCodeAt(e / 8)) << e % 32;
            return n
        }
        function r(t) {
            var e, n, r = "0123456789abcdef", o = "";
            for (n = 0; n < t.length; n += 1)
                e = t.charCodeAt(n),
                o += r.charAt(e >>> 4 & 15) + r.charAt(15 & e);
            return o
        }
        function n(t) {
            return unescape(encodeURIComponent(t))
        }
        function o(t) {
            return function(t) {
                return c(u(l(t), 8 * t.length))
            }(n(t))
        }
        function i(t, e) {
            return function(t, e) {
                var n, r, o = l(t), i = [], a = [];
                for (i[15] = a[15] = void 0,
                16 < o.length && (o = u(o, 8 * t.length)),
                n = 0; n < 16; n += 1)
                    i[n] = 909522486 ^ o[n],
                    a[n] = 1549556828 ^ o[n];
                return r = u(i.concat(l(e)), 512 + 8 * e.length),
                c(u(a.concat(r), 640))
            }(n(t), n(e))
        }
        function e(t, e, n) {
            return e ? n ? i(e, t) : function(t, e) {
                return r(i(t, e))
            }(e, t) : n ? o(t) : function(t) {
                return r(o(t))
            }(t)
        }
        var a;
        a = v,
        t.exports ? t.exports = e : a.md5 = e
    })
      , p = function() {
        function t() {
            l(this, t)
        }
        return e(t, null, [{
            key: "getItem",
            value: function(t) {
                return t && decodeURIComponent(document.cookie.replace(new RegExp("(?:(?:^|.*;)\\s*" + encodeURIComponent(t).replace(/[\-\.\+\*]/g, "\\$&") + "\\s*\\=\\s*([^;]*).*$)|^.*$"), "$1")) || null
            }
        }, {
            key: "setItem",
            value: function(t, e, n, r, o, i) {
                if (!t || /^(?:expires|max\-age|path|domain|secure)$/i.test(t))
                    return !1;
                var a = "";
                if (n)
                    switch (n.constructor) {
                    case Number:
                        a = n === 1 / 0 ? "; expires=Fri, 31 Dec 9999 23:59:59 GMT" : "; max-age=" + n;
                        break;
                    case String:
                        a = "; expires=" + n;
                        break;
                    case Date:
                        a = "; expires=" + n.toUTCString()
                    }
                return document.cookie = encodeURIComponent(t) + "=" + encodeURIComponent(e) + a + (o ? "; domain=" + o : "") + (r ? "; path=" + r : "") + (i ? "; secure" : ""),
                !0
            }
        }]),
        t
    }()
      , g = function() {
        function c() {
            l(this, c)
        }
        return e(c, null, [{
            key: "trim",
            value: function(t) {
                return String.prototype.trim ? t.trim() : t.replace(/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g, "")
            }
        }, {
            key: "assert",
            value: function(t, e) {
                if (!t)
                    throw new Error(e) || "Assertion failed"
            }
        }, {
            key: "isElement",
            value: function(t) {
                return !(!t || 1 !== t.nodeType)
            }
        }, {
            key: "isObject",
            value: function(t) {
                return "object" === z(t) && !Array.isArray(t) && !!t
            }
        }, {
            key: "isUndefined",
            value: function(t) {
                return void 0 === t
            }
        }, {
            key: "isString",
            value: function(t) {
                return "[object String]" === Object.prototype.toString.call(t)
            }
        }, {
            key: "isNumber",
            value: function(t) {
                return "[object Number]" === Object.prototype.toString.call(t)
            }
        }, {
            key: "isFunction",
            value: function(t) {
                return "function" == typeof t || !1
            }
        }, {
            key: "pick",
            value: function(e, t) {
                var n = {};
                return null == e || t.forEach(function(t) {
                    c.isUndefined(e[t]) || (n[t] = e[t])
                }),
                n
            }
        }, {
            key: "fromPairs",
            value: function(t) {
                return (t = t || []).reduce(function(t, e) {
                    var n = h(e, 2)
                      , r = n[0]
                      , o = n[1];
                    return t[r] = o,
                    t
                }, {})
            }
        }, {
            key: "identity",
            value: function(t) {
                return t
            }
        }, {
            key: "groupBy",
            value: function(t) {
                var r = 1 < arguments.length && void 0 !== arguments[1] ? arguments[1] : c.identity
                  , o = 2 < arguments.length && void 0 !== arguments[2] ? arguments[2] : c.identity
                  , i = {};
                return (t = t || []).forEach(function(t) {
                    var e = r(t)
                      , n = o(t);
                    i[e] = i[e] || [],
                    i[e].push(n)
                }),
                i
            }
        }, {
            key: "uuid",
            value: function() {
                var n = Date.now();
                return window.performance && "function" == typeof window.performance.now && (n += performance.now()),
                "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g, function(t) {
                    var e = (n + 16 * Math.random()) % 16 | 0;
                    return n = Math.floor(n / 16),
                    ("x" === t ? e : 3 & e | 8).toString(16)
                })
            }
        }, {
            key: "bind",
            value: function(t, r) {
                for (var e = arguments.length, o = new Array(2 < e ? e - 2 : 0), n = 2; n < e; n++)
                    o[n - 2] = arguments[n];
                c.assert("function" == typeof t, "what is trying to be bound is not callable.");
                var i = t;
                return function() {
                    for (var t = arguments.length, e = new Array(t), n = 0; n < t; n++)
                        e[n] = arguments[n];
                    return i.apply(r, o.concat(e))
                }
            }
        }, {
            key: "extend",
            value: function() {
                var t = !1
                  , e = arguments.length
                  , n = 1
                  , r = (arguments.length <= 0 ? void 0 : arguments[0]) || {};
                for ("boolean" == typeof r && (t = r,
                r = (n < 0 || arguments.length <= n ? void 0 : arguments[n]) || {},
                n++),
                c.isObject(r) || c.isFunction(r) || (r = {}); n < e; n++) {
                    var o = n < 0 || arguments.length <= n ? void 0 : arguments[n];
                    if (null != o)
                        for (var i in o)
                            if (o.hasOwnProperty(i)) {
                                var a = r[i]
                                  , s = o[i];
                                if (r !== s)
                                    if (t && s && (c.isObject(s) || Array.isArray(s))) {
                                        var u = void 0;
                                        u = Array.isArray(s) ? a && Array.isArray(a) ? a : [] : a && c.isObject(a) ? a : {},
                                        r[i] = c.extend(t, u, s)
                                    } else
                                        void 0 !== s && (r[i] = s)
                            }
                }
                return r
            }
        }, {
            key: "encodeUrlQuery",
            value: function(e) {
                return e = e || {},
                Object.keys(e).map(function(t) {
                    return "".concat(t, "=").concat(e[t])
                }).join("&")
            }
        }]),
        c
    }()
      , y = new (function() {
        function n(t) {
            var e;
            l(this, n),
            this._uid = "",
            this._optid = "",
            this._sessionid = g.uuid(),
            this._production = "",
            this._cert = "",
            this._getInfoFunc = function(t, e) {
                return {}
            }
            ,
            this._tracks = [],
            this._ext = (s(e = {}, "_v", "2.0.1"),
            s(e, "_isf", window !== window.top),
            e),
            this._stopEvents = [],
            this._stopAttrs = [],
            this._postTarget = window.top,
            this._postTargetOrigin = ".baidu.com",
            this._logCompressMode = "euc",
            this._logUrl = {
                scheme: "https:" === document.location.protocol ? "https" : "http",
                host: "fclog.baidu.com",
                port: "https:" === document.location.protocol ? 443 : 80,
                path: "/log/insight",
                query: {
                    type: "behavior",
                    emd: "euc"
                }
            },
            this._heartBeatTime = 12e3
        }
        return e(n, [{
            key: "dump",
            value: function() {
                return {
                    production: this._production,
                    ext: this._ext,
                    href: window.location.href
                }
            }
        }, {
            key: "stopAttrs",
            set: function(t) {
                g.assert(g.isString(t), "stopAttrs must be string."),
                this._stopAttrs = t ? t.split("|") : []
            },
            get: function() {
                return this._stopAttrs
            }
        }, {
            key: "stopEvents",
            set: function(t) {
                g.assert(g.isString(t), "stopAttrs must be string."),
                this._stopEvents = t ? t.split("|") : []
            },
            get: function() {
                return this._stopEvents
            }
        }, {
            key: "ext",
            set: function(t) {
                g.assert(g.isObject(t), "ext must be object."),
                this._ext = g.extend({}, this._ext, t)
            },
            get: function() {
                return this._ext
            }
        }, {
            key: "uid",
            set: function(t) {
                g.assert(g.isString(t), "uid must be string."),
                this._uid = t
            },
            get: function() {
                p.getItem("AGL_USER_ID") || p.setItem("AGL_USER_ID", g.uuid(), 1 / 0, "/", document.location.hostname);
                var t = p.getItem("AGL_USER_ID");
                return this._uid || !t ? this._uid : t
            }
        }, {
            key: "optid",
            set: function(t) {
                g.assert(g.isString(t), "optid must be string."),
                this._optid = t
            },
            get: function() {
                return this._optid
            }
        }, {
            key: "production",
            set: function(t) {
                g.assert(g.isString(t), "production must be string."),
                this._production = t
            },
            get: function() {
                return this._production
            }
        }, {
            key: "cert",
            set: function(t) {
                g.assert(g.isString(t), "cert must be string."),
                this._cert = t
            },
            get: function() {
                return this._cert
            }
        }, {
            key: "getInfoFunc",
            set: function(t) {
                g.assert(g.isFunction(t), "getInfoFunc must be function."),
                this._getInfoFunc = t
            },
            get: function() {
                return this._getInfoFunc
            }
        }, {
            key: "tracks",
            set: function(t) {
                this._tracks = t
            },
            get: function() {
                return this._tracks
            }
        }, {
            key: "sessionid",
            get: function() {
                return this._sessionid
            }
        }, {
            key: "postTarget",
            get: function() {
                return this._postTarget
            }
        }, {
            key: "postTargetOrigin",
            get: function() {
                return this._postTargetOrigin
            }
        }, {
            key: "logUrl",
            set: function(t) {
                g.assert(g.isObject(t), "logUrl must be object."),
                g.extend(!0, this._logUrl, t)
            },
            get: function() {
                var t = this._logUrl.port
                  , e = this._logUrl.scheme
                  , n = 80 === t && "http" === e || 443 === t && "https" === e;
                return ["".concat(e, "://"), this._logUrl.host, n ? "" : ":".concat(t), this._logUrl.path, "?".concat(g.encodeUrlQuery(this._logUrl.query))].join("")
            }
        }, {
            key: "rawLogUrl",
            get: function() {
                return this._logUrl
            }
        }, {
            key: "logCompressMode",
            set: function(t) {
                g.assert(g.isString(t), "logCompressMode must be string."),
                this._logCompressMode = t
            },
            get: function() {
                return this._logCompressMode
            }
        }, {
            key: "heartBeatTime",
            set: function(t) {
                g.assert(g.isNumber(t), "heartBeatTime must be number."),
                this._heartBeatTime = t
            },
            get: function() {
                return this._heartBeatTime
            }
        }]),
        n
    }())
      , m = function() {
        function n(t, e) {
            l(this, n),
            this.type = t,
            this.data = e
        }
        return e(n, [{
            key: "target",
            set: function(t) {
                this._target = t
            },
            get: function() {
                return this._target
            }
        }, {
            key: "type",
            set: function(t) {
                this._type = t
            },
            get: function() {
                return this._type
            }
        }, {
            key: "data",
            set: function(t) {
                this._data = t
            },
            get: function() {
                return this._data
            }
        }]),
        n
    }()
      , E = function() {
        function t() {
            l(this, t),
            this._handlerMap = {}
        }
        return e(t, [{
            key: "dispatch",
            value: function(t) {
                var e = this._handlerMap[t.type];
                e && (t.target = this.constructor.name,
                e(t))
            }
        }, {
            key: "addListener",
            value: function(t, e) {
                this._handlerMap[t] = e
            }
        }, {
            key: "removeListener",
            value: function(t) {
                delete this._handlerMap[t]
            }
        }]),
        t
    }()
      , _ = new (function() {
        function t() {
            l(this, t),
            this._prefix = "fclog_",
            this._logReg = /fclog_/,
            this._storageTestFlag = this.storageTest(window.localStorage)
        }
        return e(t, [{
            key: "storageTest",
            value: function(t) {
                if (t)
                    try {
                        return t.setItem("exp_fx_local_test_key", "value"),
                        t.removeItem("exp_fx_local_test_key"),
                        !0
                    } catch (t) {
                        return !1
                    }
            }
        }, {
            key: "sendStorageData",
            value: function(t) {
                if (this._storageTestFlag)
                    for (var e in window.localStorage)
                        e.match(this._logReg) && t.retry(e.split(this._prefix)[1])
            }
        }, {
            key: "removeStorageLogData",
            value: function(t) {
                this._storageTestFlag && window.localStorage.removeItem(this._prefix + t)
            }
        }, {
            key: "setStorageLogData",
            value: function(t) {
                this._storageTestFlag && window.localStorage.setItem(this._prefix + t, this._prefix)
            }
        }]),
        t
    }())
      , T = new (function() {
        function t() {
            l(this, t),
            this._reqfields = ["responseType", "withCredentials", "timeout", "onprogress"]
        }
        return e(t, [{
            key: "_hasSendBeacon",
            value: function() {
                return window.navigator && window.navigator.sendBeacon
            }
        }, {
            key: "_setDefault",
            value: function(t, e, n) {
                t[e] = t[e] || n
            }
        }, {
            key: "_getRequest",
            value: function(t) {
                return t && window.XDomainRequest && !/MSIE 1/.test(navigator.userAgent) ? new XDomainRequest : window.XMLHttpRequest ? new XMLHttpRequest : void 0
            }
        }, {
            key: "ajax",
            value: function(e) {
                function t(t, e) {
                    return function() {
                        a || (n(void 0 === s.status ? t : s.status, 0 === s.status ? "Error" : s.response || s.responseText || e, s),
                        a = !0)
                    }
                }
                var n = 1 < arguments.length && void 0 !== arguments[1] ? arguments[1] : function() {}
                  , r = e.headers || {}
                  , o = e.body
                  , i = e.method || (o ? "POST" : "GET")
                  , a = !1
                  , s = this._getRequest(e.cors);
                s.open(i, e.url, !0);
                var u = s.onload = t(200);
                return s.onreadystatechange = function() {
                    4 === s.readyState && u()
                }
                ,
                s.onerror = t(null, "Error"),
                s.ontimeout = t(null, "Timeout"),
                s.onabort = t(null, "Abort"),
                this._reqfields.forEach(function(t) {
                    void 0 !== e[t] && (s[t] = e[t])
                }),
                Object.keys(r).forEach(function(t) {
                    s.setRequestHeader(t, r[t])
                }),
                s.send(o),
                s
            }
        }, {
            key: "xhrPing",
            value: function(n, r) {
                var o = this
                  , i = 2 < arguments.length && void 0 !== arguments[2] ? arguments[2] : 0;
                this.ajax({
                    url: n,
                    method: "POST",
                    headers: {
                        "Content-Type": "text/plain; charset=utf-8"
                    },
                    cors: !0,
                    withCredentials: !0,
                    body: r
                }, function(t, e) {
                    200 === t ? _.removeStorageLogData(r) : i <= 2 && o.xhrPing(n, r, ++i)
                })
            }
        }, {
            key: "beaconPing",
            value: function(t, e) {
                return !!this._hasSendBeacon() && window.navigator.sendBeacon(t, e)
            }
        }, {
            key: "smartPing",
            value: function(t, e) {
                this.beaconPing(t, e) || this.xhrPing(t, e)
            }
        }]),
        t
    }())
      , b = String.fromCharCode
      , w = new (function() {
        function t() {
            l(this, t)
        }
        return e(t, [{
            key: "compressToUint8Array",
            value: function(t) {
                for (var e = this.compress(t), n = new Uint8Array(2 * e.length), r = 0, o = e.length; r < o; r++) {
                    var i = e.charCodeAt(r);
                    n[2 * r] = i >>> 8,
                    n[2 * r + 1] = i % 256
                }
                return n
            }
        }, {
            key: "compressToEncodedURIComponent",
            value: function(t) {
                return null === t ? "" : this._compress(t, 6, function(t) {
                    return "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+-$".charAt(t)
                })
            }
        }, {
            key: "compress",
            value: function(t) {
                return this._compress(t, 16, function(t) {
                    return b(t)
                })
            }
        }, {
            key: "_compress",
            value: function(t, e, n) {
                if (null === t)
                    return "";
                var r, o, i, a = {}, s = {}, u = "", c = "", l = "", f = 2, h = 3, d = 2, p = [], g = 0, v = 0;
                for (i = 0; i < t.length; i += 1)
                    if (u = t.charAt(i),
                    Object.prototype.hasOwnProperty.call(a, u) || (a[u] = h++,
                    s[u] = !0),
                    c = l + u,
                    Object.prototype.hasOwnProperty.call(a, c))
                        l = c;
                    else {
                        if (Object.prototype.hasOwnProperty.call(s, l)) {
                            if (l.charCodeAt(0) < 256) {
                                for (r = 0; r < d; r++)
                                    g <<= 1,
                                    v === e - 1 ? (v = 0,
                                    p.push(n(g)),
                                    g = 0) : v++;
                                for (o = l.charCodeAt(0),
                                r = 0; r < 8; r++)
                                    g = g << 1 | 1 & o,
                                    v === e - 1 ? (v = 0,
                                    p.push(n(g)),
                                    g = 0) : v++,
                                    o >>= 1
                            } else {
                                for (o = 1,
                                r = 0; r < d; r++)
                                    g = g << 1 | o,
                                    v === e - 1 ? (v = 0,
                                    p.push(n(g)),
                                    g = 0) : v++,
                                    o = 0;
                                for (o = l.charCodeAt(0),
                                r = 0; r < 16; r++)
                                    g = g << 1 | 1 & o,
                                    v === e - 1 ? (v = 0,
                                    p.push(n(g)),
                                    g = 0) : v++,
                                    o >>= 1
                            }
                            0 === --f && (f = Math.pow(2, d),
                            d++),
                            delete s[l]
                        } else
                            for (o = a[l],
                            r = 0; r < d; r++)
                                g = g << 1 | 1 & o,
                                v === e - 1 ? (v = 0,
                                p.push(n(g)),
                                g = 0) : v++,
                                o >>= 1;
                        0 === --f && (f = Math.pow(2, d),
                        d++),
                        a[c] = h++,
                        l = String(u)
                    }
                if ("" !== l) {
                    if (Object.prototype.hasOwnProperty.call(s, l)) {
                        if (l.charCodeAt(0) < 256) {
                            for (r = 0; r < d; r++)
                                g <<= 1,
                                v === e - 1 ? (v = 0,
                                p.push(n(g)),
                                g = 0) : v++;
                            for (o = l.charCodeAt(0),
                            r = 0; r < 8; r++)
                                g = g << 1 | 1 & o,
                                v === e - 1 ? (v = 0,
                                p.push(n(g)),
                                g = 0) : v++,
                                o >>= 1
                        } else {
                            for (o = 1,
                            r = 0; r < d; r++)
                                g = g << 1 | o,
                                v === e - 1 ? (v = 0,
                                p.push(n(g)),
                                g = 0) : v++,
                                o = 0;
                            for (o = l.charCodeAt(0),
                            r = 0; r < 16; r++)
                                g = g << 1 | 1 & o,
                                v === e - 1 ? (v = 0,
                                p.push(n(g)),
                                g = 0) : v++,
                                o >>= 1
                        }
                        0 === --f && (f = Math.pow(2, d),
                        d++),
                        delete s[l]
                    } else
                        for (o = a[l],
                        r = 0; r < d; r++)
                            g = g << 1 | 1 & o,
                            v === e - 1 ? (v = 0,
                            p.push(n(g)),
                            g = 0) : v++,
                            o >>= 1;
                    0 === --f && (f = Math.pow(2, d),
                    d++)
                }
                for (o = 2,
                r = 0; r < d; r++)
                    g = g << 1 | 1 & o,
                    v === e - 1 ? (v = 0,
                    p.push(n(g)),
                    g = 0) : v++,
                    o >>= 1;
                for (; ; ) {
                    if (g <<= 1,
                    v === e - 1) {
                        p.push(n(g));
                        break
                    }
                    v++
                }
                return p.join("")
            }
        }]),
        t
    }())
      , x = new (function() {
        function t() {
            l(this, t),
            this._encryptMode = "euc"
        }
        return e(t, [{
            key: "log",
            value: function(t) {
                var e = JSON.stringify(t)
                  , n = "u8a" === y.logCompressMode ? w.compressToUint8Array(e).buffer : w.compressToEncodedURIComponent(e);
                _.setStorageLogData(n),
                this.retry(n),
                "beforeunload" === t.type && this.validate(t)
            }
        }, {
            key: "retry",
            value: function(t) {
                T.xhrPing(y.logUrl, t)
            }
        }, {
            key: "validate",
            value: function(t) {
                t.ext.isBeacon = 1;
                var e = y.logUrl.replace(y.rawLogUrl.query.type, "validation");
                T.beaconPing(e, w.compressToEncodedURIComponent(JSON.stringify(t))) || (t.ext.isBeacon = 0,
                T.xhrPing(e, w.compressToEncodedURIComponent(JSON.stringify(t))))
            }
        }]),
        t
    }())
      , C = t(function(t) {
        var e, n;
        e = v,
        n = function() {
            var r, o, i, n, a = window, u = a.document, e = u.documentElement, c = "parentNode", s = /^(checked|value|selected|disabled)$/i, l = /^(select|fieldset|table|tbody|tfoot|td|tr|colgroup)$/i, f = /\s*<script +src=['"]([^'"]+)['"]>/, t = ["<table>", "</table>", 1], h = ["<table><tbody><tr>", "</tr></tbody></table>", 3], d = ["<select>", "</select>", 1], p = ["_", "", 0, 1], g = {
                thead: t,
                tbody: t,
                tfoot: t,
                colgroup: t,
                caption: t,
                tr: ["<table><tbody>", "</tbody></table>", 2],
                th: h,
                td: h,
                col: ["<table><colgroup>", "</colgroup></table>", 2],
                fieldset: ["<form>", "</form>", 1],
                legend: ["<form><fieldset>", "</fieldset></form>", 2],
                option: d,
                optgroup: d,
                script: p,
                style: p,
                link: p,
                param: p,
                base: p
            }, v = /^(checked|selected|disabled)$/, y = {}, m = 0, E = /^-?[\d\.]+$/, _ = /^data-(.+)$/, T = "setAttribute", b = "getAttribute", w = (n = u.createElement("p"),
            {
                transform: function() {
                    var t, e = ["transform", "webkitTransform", "MozTransform", "OTransform", "msTransform"];
                    for (t = 0; t < e.length; t++)
                        if (e[t]in n.style)
                            return e[t]
                }(),
                classList: "classList"in n
            }), x = /\s+/, C = String.prototype.toString, k = {
                lineHeight: 1,
                zoom: 1,
                zIndex: 1,
                opacity: 1,
                boxFlex: 1,
                WebkitBoxFlex: 1,
                MozBoxFlex: 1
            }, O = u.querySelectorAll && function(t) {
                return u.querySelectorAll(t)
            }
            ;
            function A(t) {
                return t && t.nodeName && (1 == t.nodeType || 11 == t.nodeType)
            }
            function S(t, e, n) {
                var r, o, i;
                if ("string" == typeof t)
                    return q.create(t);
                if (A(t) && (t = [t]),
                n) {
                    for (i = [],
                    r = 0,
                    o = t.length; r < o; r++)
                        i[r] = G(e, t[r]);
                    return i
                }
                return t
            }
            function L(t) {
                return new RegExp("(^|\\s+)" + t + "(\\s+|$)")
            }
            function N(t, e, n, r) {
                for (var o, i = 0, a = t.length; i < a; i++)
                    o = r ? t.length - i - 1 : i,
                    e.call(n || t[o], t[o], o, t);
                return t
            }
            function I(t, e, n) {
                for (var r = 0, o = t.length; r < o; r++)
                    A(t[r]) && (I(t[r].childNodes, e, n),
                    e.call(n || t[r], t[r], r, t));
                return t
            }
            function U(t) {
                return t.replace(/-(.)/g, function(t, e) {
                    return e.toUpperCase()
                })
            }
            function P(t) {
                t[b]("data-node-uid") || t[T]("data-node-uid", ++m);
                var e = t[b]("data-node-uid");
                return y[e] || (y[e] = {})
            }
            function H(t) {
                var e = t[b]("data-node-uid");
                e && delete y[e]
            }
            function R(t) {
                var e;
                try {
                    return null == t ? void 0 : "true" === t || "false" !== t && ("null" === t ? null : (e = parseFloat(t)) == t ? e : t)
                } catch (t) {}
            }
            function M(t, e, n) {
                for (var r = 0, o = t.length; r < o; ++r)
                    if (e.call(n || null, t[r], r, t))
                        return !0;
                return !1
            }
            function D(t) {
                return "transform" == t && (t = w.transform) || /^transform-?[Oo]rigin$/.test(t) && (t = w.transform + "Origin"),
                t ? U(t) : null
            }
            function Y(t, e, r, o) {
                var i = 0
                  , a = e || this
                  , s = [];
                return N(S(O && "string" == typeof t && "<" != t.charAt(0) ? O(t) : t), function(e, n) {
                    N(a, function(t) {
                        r(e, s[i++] = 0 < n ? G(a, t) : t)
                    }, null, o)
                }, this, o),
                a.length = i,
                N(s, function(t) {
                    a[--i] = t
                }, null, !o),
                a
            }
            function V(t, e, n) {
                var r = q(t)
                  , o = r.css("position")
                  , i = r.offset()
                  , a = "relative"
                  , s = o == a
                  , u = [parseInt(r.css("left"), 10), parseInt(r.css("top"), 10)];
                "static" == o && (r.css("position", a),
                o = a),
                isNaN(u[0]) && (u[0] = s ? 0 : t.offsetLeft),
                isNaN(u[1]) && (u[1] = s ? 0 : t.offsetTop),
                null != e && (t.style.left = e - i.left + u[0] + "px"),
                null != n && (t.style.top = n - i.top + u[1] + "px")
            }
            function B(t, e) {
                return "function" == typeof e ? e.call(t, t) : e
            }
            function F(t, e, n) {
                var r = this[0];
                return r ? null == t && null == e ? (K(r) ? $() : {
                    x: r.scrollLeft,
                    y: r.scrollTop
                })[n] : (K(r) ? a.scrollTo(t, e) : (null != t && (r.scrollLeft = t),
                null != e && (r.scrollTop = e)),
                this) : this
            }
            function j(t) {
                if (this.length = 0,
                t) {
                    t = "string" == typeof t || t.nodeType || void 0 === t.length ? [t] : t,
                    this.length = t.length;
                    for (var e = 0; e < t.length; e++)
                        this[e] = t[e]
                }
            }
            function G(t, e) {
                var n, r, o, i = e.cloneNode(!0);
                if (t.$ && "function" == typeof t.cloneEvents)
                    for (t.$(i).cloneEvents(e),
                    n = t.$(i).find("*"),
                    r = t.$(e).find("*"),
                    o = 0; o < r.length; o++)
                        t.$(n[o]).cloneEvents(r[o]);
                return i
            }
            function K(t) {
                return t === a || /^(?:body|html)$/i.test(t.tagName)
            }
            function $() {
                return {
                    x: a.pageXOffset || e.scrollLeft,
                    y: a.pageYOffset || e.scrollTop
                }
            }
            function q(t) {
                return new j(t)
            }
            return i = w.classList ? (r = function(t, e) {
                return t.classList.contains(e)
            }
            ,
            o = function(t, e) {
                t.classList.add(e)
            }
            ,
            function(t, e) {
                t.classList.remove(e)
            }
            ) : (r = function(t, e) {
                return L(e).test(t.className)
            }
            ,
            o = function(t, e) {
                t.className = (t.className + " " + e).trim()
            }
            ,
            function(t, e) {
                t.className = t.className.replace(L(e), " ").trim()
            }
            ),
            j.prototype = {
                get: function(t) {
                    return this[t] || null
                },
                each: function(t, e) {
                    return N(this, t, e)
                },
                deepEach: function(t, e) {
                    return I(this, t, e)
                },
                map: function(t, e) {
                    var n, r, o = [];
                    for (r = 0; r < this.length; r++)
                        n = t.call(this, this[r], r),
                        e ? e(n) && o.push(n) : o.push(n);
                    return o
                },
                html: function(n, r) {
                    var o = r ? "textContent" : "innerHTML"
                      , i = this;
                    return void 0 !== n ? this.empty().each(function(t, e) {
                        try {
                            if (r || "string" == typeof n && !l.test(t.tagName))
                                return t[o] = n
                        } catch (t) {}
                        !function(e, t) {
                            N(S(n, i, t), function(t) {
                                e.appendChild(t)
                            })
                        }(t, e)
                    }) : this[0] ? this[0][o] : ""
                },
                text: function(t) {
                    return this.html(t, !0)
                },
                append: function(n) {
                    var r = this;
                    return this.each(function(e, t) {
                        N(S(n, r, t), function(t) {
                            e.appendChild(t)
                        })
                    })
                },
                prepend: function(r) {
                    var o = this;
                    return this.each(function(e, t) {
                        var n = e.firstChild;
                        N(S(r, o, t), function(t) {
                            e.insertBefore(t, n)
                        })
                    })
                },
                appendTo: function(t, e) {
                    return Y.call(this, t, e, function(t, e) {
                        t.appendChild(e)
                    })
                },
                prependTo: function(t, e) {
                    return Y.call(this, t, e, function(t, e) {
                        t.insertBefore(e, t.firstChild)
                    }, 1)
                },
                before: function(n) {
                    var r = this;
                    return this.each(function(e, t) {
                        N(S(n, r, t), function(t) {
                            e[c].insertBefore(t, e)
                        })
                    })
                },
                after: function(n) {
                    var r = this;
                    return this.each(function(e, t) {
                        N(S(n, r, t), function(t) {
                            e[c].insertBefore(t, e.nextSibling)
                        }, null, 1)
                    })
                },
                insertBefore: function(t, e) {
                    return Y.call(this, t, e, function(t, e) {
                        t[c].insertBefore(e, t)
                    })
                },
                insertAfter: function(t, e) {
                    return Y.call(this, t, e, function(t, e) {
                        var n = t.nextSibling;
                        n ? t[c].insertBefore(e, n) : t[c].appendChild(e)
                    }, 1)
                },
                replaceWith: function(n) {
                    var r = this;
                    return this.each(function(e, t) {
                        N(S(n, r, t), function(t) {
                            e[c] && e[c].replaceChild(t, e)
                        })
                    })
                },
                clone: function(t) {
                    var e, n, r = [];
                    for (n = 0,
                    e = this.length; n < e; n++)
                        r[n] = G(t || this, this[n]);
                    return q(r)
                },
                addClass: function(t) {
                    return t = C.call(t).split(x),
                    this.each(function(e) {
                        N(t, function(t) {
                            t && !r(e, B(e, t)) && o(e, B(e, t))
                        })
                    })
                },
                removeClass: function(t) {
                    return t = C.call(t).split(x),
                    this.each(function(e) {
                        N(t, function(t) {
                            t && r(e, B(e, t)) && i(e, B(e, t))
                        })
                    })
                },
                hasClass: function(t) {
                    return t = C.call(t).split(x),
                    M(this, function(e) {
                        return M(t, function(t) {
                            return t && r(e, t)
                        })
                    })
                },
                toggleClass: function(t, n) {
                    return t = C.call(t).split(x),
                    this.each(function(e) {
                        N(t, function(t) {
                            t && (void 0 !== n ? n ? r(e, t) || o(e, t) : i(e, t) : r(e, t) ? i(e, t) : o(e, t))
                        })
                    })
                },
                show: function(e) {
                    return e = "string" == typeof e ? e : "",
                    this.each(function(t) {
                        t.style.display = e
                    })
                },
                hide: function() {
                    return this.each(function(t) {
                        t.style.display = "none"
                    })
                },
                toggle: function(e, n) {
                    return n = "string" == typeof n ? n : "",
                    "function" != typeof e && (e = null),
                    this.each(function(t) {
                        t.style.display = t.offsetWidth || t.offsetHeight ? "none" : n,
                        e && e.call(t)
                    })
                },
                first: function() {
                    return q(this.length ? this[0] : [])
                },
                last: function() {
                    return q(this.length ? this[this.length - 1] : [])
                },
                next: function() {
                    return this.related("nextSibling")
                },
                previous: function() {
                    return this.related("previousSibling")
                },
                parent: function() {
                    return this.related(c)
                },
                related: function(e) {
                    return q(this.map(function(t) {
                        for (t = t[e]; t && 1 !== t.nodeType; )
                            t = t[e];
                        return t || 0
                    }, function(t) {
                        return t
                    }))
                },
                focus: function() {
                    return this.length && this[0].focus(),
                    this
                },
                blur: function() {
                    return this.length && this[0].blur(),
                    this
                },
                css: function(t, e) {
                    var n, o = t;
                    if (void 0 === e && "string" == typeof t)
                        return (e = this[0]) ? e === u || e === a ? (n = e === u ? q.doc() : q.viewport(),
                        "width" == t ? n.width : "height" == t ? n.height : "") : (t = D(t)) ? function(t, e) {
                            var n = null
                              , r = u.defaultView.getComputedStyle(t, "");
                            return r && (n = r[e]),
                            t.style[e] || n
                        }(e, t) : null : null;
                    return "string" == typeof t && ((o = {})[t] = e),
                    this.each(function(t, e, n) {
                        for (var r in o)
                            if (o.hasOwnProperty(r)) {
                                n = o[r],
                                !(e = D(r)) || !E.test(n) || e in k || (n += "px");
                                try {
                                    t.style[e] = B(t, n)
                                } catch (t) {}
                            }
                    })
                },
                offset: function(e, n) {
                    if (e && "object" == z(e) && ("number" == typeof e.top || "number" == typeof e.left))
                        return this.each(function(t) {
                            V(t, e.left, e.top)
                        });
                    if ("number" == typeof e || "number" == typeof n)
                        return this.each(function(t) {
                            V(t, e, n)
                        });
                    if (!this[0])
                        return {
                            top: 0,
                            left: 0,
                            height: 0,
                            width: 0
                        };
                    var t = this[0]
                      , r = t.ownerDocument.documentElement
                      , o = t.getBoundingClientRect()
                      , i = $()
                      , a = t.offsetWidth
                      , s = t.offsetHeight;
                    return {
                        top: o.top + i.y - Math.max(0, r && r.clientTop, u.body.clientTop),
                        left: o.left + i.x - Math.max(0, r && r.clientLeft, u.body.clientLeft),
                        height: s,
                        width: a
                    }
                },
                dim: function() {
                    if (!this.length)
                        return {
                            height: 0,
                            width: 0
                        };
                    var t, e, n = this[0], r = 9 == n.nodeType && n.documentElement, o = r || !n.style || n.offsetWidth || n.offsetHeight ? null : (t = this,
                    e = {
                        position: n.style.position || "",
                        visibility: n.style.visibility || "",
                        display: n.style.display || ""
                    },
                    t.first().css({
                        position: "absolute",
                        visibility: "hidden",
                        display: "block"
                    }),
                    e), i = r ? Math.max(n.body.scrollWidth, n.body.offsetWidth, r.scrollWidth, r.offsetWidth, r.clientWidth) : n.offsetWidth, a = r ? Math.max(n.body.scrollHeight, n.body.offsetHeight, r.scrollHeight, r.offsetHeight, r.clientHeight) : n.offsetHeight;
                    return o && this.first().css(o),
                    {
                        height: a,
                        width: i
                    }
                },
                attr: function(e, n) {
                    var t, r = this[0];
                    if ("string" == typeof e || e instanceof String)
                        return void 0 === n ? r ? s.test(e) ? !(!v.test(e) || "string" != typeof r[e]) || r[e] : r[b](e) : null : this.each(function(t) {
                            s.test(e) ? t[e] = B(t, n) : t[T](e, B(t, n))
                        });
                    for (t in e)
                        e.hasOwnProperty(t) && this.attr(t, e[t]);
                    return this
                },
                removeAttr: function(e) {
                    return this.each(function(t) {
                        v.test(e) ? t[e] = !1 : t.removeAttribute(e)
                    })
                },
                val: function(t) {
                    return "string" == typeof t || "number" == typeof t ? this.attr("value", t) : this.length ? this[0].value : null
                },
                data: function(e, n) {
                    var r, o, t = this[0];
                    return void 0 === n ? t ? (r = P(t),
                    void 0 === e ? (N(t.attributes, function(t) {
                        (o = ("" + t.name).match(_)) && (r[U(o[1])] = R(t.value))
                    }),
                    r) : (void 0 === r[e] && (r[e] = R(this.attr("data-" + function(t) {
                        return t ? t.replace(/([a-z])([A-Z])/g, "$1-$2").toLowerCase() : t
                    }(e)))),
                    r[e])) : null : this.each(function(t) {
                        P(t)[e] = n
                    })
                },
                remove: function() {
                    return this.deepEach(H),
                    this.detach()
                },
                empty: function() {
                    return this.each(function(t) {
                        for (I(t.childNodes, H); t.firstChild; )
                            t.removeChild(t.firstChild)
                    })
                },
                detach: function() {
                    return this.each(function(t) {
                        t[c] && t[c].removeChild(t)
                    })
                },
                scrollTop: function(t) {
                    return F.call(this, null, t, "y")
                },
                scrollLeft: function(t) {
                    return F.call(this, t, null, "x")
                }
            },
            q.setQueryEngine = function(t) {
                O = t,
                delete q.setQueryEngine
            }
            ,
            q.aug = function(t, e) {
                for (var n in t)
                    t.hasOwnProperty(n) && ((e || j.prototype)[n] = t[n])
            }
            ,
            q.create = function(s) {
                return "string" == typeof s && "" !== s ? function() {
                    if (f.test(s))
                        return [function(t) {
                            var e = document.createElement("script")
                              , n = t.match(f);
                            return e.src = n[1],
                            e
                        }(s)];
                    var t = s.match(/^\s*<([^\s>]+)/)
                      , e = u.createElement("div")
                      , n = []
                      , r = t ? g[t[1].toLowerCase()] : null
                      , o = r ? r[2] + 1 : 1
                      , i = r && r[3]
                      , a = c;
                    for (e.innerHTML = r ? r[0] + s + r[1] : s; o--; )
                        e = e.firstChild;
                    for (i && e && 1 !== e.nodeType && (e = e.nextSibling); t && 1 != e.nodeType || n.push(e),
                    e = e.nextSibling; )
                        ;
                    return N(n, function(t) {
                        t[a] && t[a].removeChild(t)
                    }),
                    n
                }() : A(s) ? [s.cloneNode(!0)] : []
            }
            ,
            q.doc = function() {
                var t = q.viewport();
                return {
                    width: Math.max(u.body.scrollWidth, e.scrollWidth, t.width),
                    height: Math.max(u.body.scrollHeight, e.scrollHeight, t.height)
                }
            }
            ,
            q.firstChild = function(t) {
                for (var e, n = t.childNodes, r = 0, o = n && n.length || 0; r < o; r++)
                    1 === n[r].nodeType && (e = n[o = r]);
                return e
            }
            ,
            q.viewport = function() {
                return {
                    width: a.innerWidth,
                    height: a.innerHeight
                }
            }
            ,
            q.isAncestor = "compareDocumentPosition"in e ? function(t, e) {
                return 16 == (16 & t.compareDocumentPosition(e))
            }
            : function(t, e) {
                return t !== e && t.contains(e)
            }
            ,
            q
        }
        ,
        t.exports ? t.exports = n() : e.bonzo = n()
    })
      , k = new (function() {
        function n() {
            l(this, n),
            this._characterEncoding = "(?:\\\\.|[\\w-]|[^\\x00-\\xa0])+",
            this._whitespace = "[\\x20\\t\\r\\n\\f]",
            this._identifier = "(?:\\\\.|[\\w-]|[^\0-\\xa0])+",
            this._attributes = "\\[" + this._whitespace + "*(" + this._characterEncoding + ")(?:" + this._whitespace + "*([*^$|!~]?=)" + this._whitespace + "*(?:'((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\"|(".concat(this._identifier, "))|)") + this._whitespace + "*\\]",
            this._pseudos = "\\[:(" + this._characterEncoding + ")(?:\\((((?:\\\\.|[^\\\\()[\\]]|" + this._attributes + ")*)|.*)\\)|)\\]",
            this._matchExpr = {
                PSEUDO: new RegExp(this._pseudos,"g")
            },
            this._pseudoFuncs = {
                regex: this._regex
            };
            try {
                this._xpe = new XPathEvaluator
            } catch (t) {}
        }
        return e(n, null, [{
            key: "xpathSplitChars",
            get: function() {
                return "\0/"
            }
        }]),
        e(n, [{
            key: "_regex",
            value: function() {
                for (var t = arguments.length, e = new Array(t), n = 0; n < t; n++)
                    e[n] = arguments[n];
                var r = e[0]
                  , o = e[1]
                  , i = new RegExp(unescape(o).replace(/^\s+|\s+$/g, ""),"ig");
                return "_text" === r ? i.test(A(this).childText()) : "_checked" === r ? i.test(this.checked) : i.test(A(this).attr(r))
            }
        }, {
            key: "_parseQuery",
            value: function(t) {
                for (var e, n = []; e = this._matchExpr.PSEUDO.exec(t); ) {
                    var r = h(e, 3)
                      , o = r[1]
                      , i = r[2];
                    if (n.push([o, i.split(",")]),
                    !this._pseudoFuncs[o])
                        throw "Unrecognize pseudo name: ".concat(o)
                }
                return [t.replace(this._matchExpr.PSEUDO, ""), n]
            }
        }, {
            key: "_evaluateXPath",
            value: function(t, e) {
                if (!e)
                    return [];
                for (var n, r = this._xpe.createNSResolver(null == t.ownerDocument ? t.documentElement : t.ownerDocument.documentElement), o = this._xpe.evaluate(e, t, r, 0, null), i = []; n = o.iterateNext(); )
                    i.push(n);
                return i
            }
        }, {
            key: "_findChildren",
            value: function(t, n, r) {
                var i = this;
                return t.reduce(function(t, e) {
                    return [].concat(d(t), d(Array.prototype.filter.call(i._evaluateXPath(e, n), function(o) {
                        return r.every(function(t) {
                            var e = h(t, 2)
                              , n = e[0]
                              , r = e[1];
                            return i._pseudoFuncs[n].apply(o, r)
                        })
                    })))
                }, [])
            }
        }, {
            key: "selectAll",
            value: function(t) {
                var s = this;
                if (!t)
                    return [];
                var u = [document]
                  , c = []
                  , e = "//".concat(t).split(n.xpathSplitChars)
                  , l = e.length - 1;
                return e.forEach(function(t, e, n) {
                    var r = h(s._parseQuery(t), 2)
                      , o = r[0]
                      , i = r[1]
                      , a = c.join("/");
                    i.length ? (a && (u = s._findChildren(u, c.join("/"), [])),
                    u = s._findChildren(u, o, i),
                    c.length = 0) : (c.push(o),
                    e === l && (u = s._findChildren(u, c.join("/"), [])))
                }),
                u
            }
        }]),
        n
    }())
      , O = function() {
        function o() {
            l(this, o),
            this._prepareDomUtil()
        }
        return e(o, null, [{
            key: "NODE_TYPE",
            get: function() {
                return {
                    ELEMENT: 1,
                    TEXT: 3
                }
            }
        }, {
            key: "DUO",
            get: function() {
                return {
                    MAX_BIT_NUM: 16,
                    SPLIT_BIT_VAL: Math.pow(2, 16) - 1
                }
            }
        }]),
        e(o, [{
            key: "_prepareDomUtil",
            value: function() {
                C.aug({
                    childText: this._childText,
                    index: this._index,
                    create: this._create,
                    offsetParent: this._offsetParent
                })
            }
        }, {
            key: "_offsetParent",
            value: function() {
                var t = document.getElementsByTagName("html")[0];
                if (!this.length)
                    return C(t);
                for (var e = this[0].offsetParent || t; e && "HTML" !== e.tagName && "static" === C(e).css("position"); )
                    e = e.offsetParent;
                return C(e || t)
            }
        }, {
            key: "_childText",
            value: function() {
                if (!this.length && !this[0].childNodes)
                    return "";
                var t = this[0];
                return [].reduce.call(t.childNodes, function(t, e) {
                    return t + (e.nodeType === o.NODE_TYPE.TEXT ? e.textContent : "")
                }, "").replace(/(\n|\s)/g, "")
            }
        }, {
            key: "_index",
            value: function() {
                if (!this.length)
                    return 0;
                for (var t = this[0], e = t.tagName, n = 0, r = 0; t = t.previousSibling; )
                    t.nodeType === o.NODE_TYPE.ELEMENT && (n++,
                    t.tagName === e && r++);
                return n << o.DUO.MAX_BIT_NUM | r
            }
        }, {
            key: "_create",
            value: function(t) {
                return C(C.create(t))
            }
        }, {
            key: "$",
            value: function(t) {
                return "[object String]" === Object.prototype.toString.call(t) ? C(k.selectAll(t)) : C(t)
            }
        }]),
        o
    }()
      , A = (new O).$
      , S = function(t) {
        function i() {
            var t;
            return l(this, i),
            (t = u(this, o(i).call(this))).rootNode = document.getElementsByTagName("html")[0],
            t.preventDefault = !1,
            t.consciousActionTs = t.getCurrTime().ts,
            t.getInfoFuncs = [t.getNodeBasicInfo, t.getNodeIndex, t.getNodeProps, t.getNodeAttrs, t.getNodeText, t.getNodeOffset],
            t.eventHandler = g.bind(t.eventHandler, a(t)),
            t.sendStorageData(x),
            t.equip(),
            t
        }
        return n(i, E),
        e(i, null, [{
            key: "EVENT",
            get: function() {
                return {
                    TRACK_LOG: "TRACK_LOG",
                    URL_CHANGE: "URL_CHANGE"
                }
            }
        }, {
            key: "LOCATION_KEYS",
            get: function() {
                return ["protocol", "hostname", "port", "pathname", "search", "hash"]
            }
        }, {
            key: "CUSTOM_KEY",
            get: function() {
                return {
                    TAG: "_tag",
                    TEXT: "_text",
                    INDEX: "_i",
                    SAME_INDEX: "_si",
                    VALUE: "_value",
                    CHECKED: "_checked",
                    S_TOP: "_st",
                    S_LEFT: "_sl"
                }
            }
        }, {
            key: "E_TYPE",
            get: function() {
                return {
                    CLICK: "click",
                    INPUT: "input",
                    FOCUS: "focus",
                    BLUR: "blur",
                    MOUSEMOVE: "mousemove",
                    SCROLL: "scroll",
                    LOAD: "load",
                    DISARM: "disarm",
                    BEFOREUNLOAD: "beforeunload",
                    VISIBILITYCHANGE: "visibilitychange",
                    HASHCHANGE: "hashchange",
                    HEARTBEAT: "heartbeat"
                }
            }
        }, {
            key: "REG",
            get: function() {
                var t = "(current|show|hidden|active|hover|enabled|disabled|ifx-)";
                return {
                    DROP_CLASSNAME: new RegExp("(^".concat(t, "|").concat(t, "$)"))
                }
            }
        }, {
            key: "PROPS",
            get: function() {
                return ["checked", "value"]
            }
        }, {
            key: "ATTRS",
            get: function() {
                return ["href", "target", "title", "download", "type", "value", "name", "readonly", "disabled", "checked", "placeholder", "accept", "src", "alt", "usermap", "ismap", "action", "method", "coords", "shape", "for", "label", "selected", "multiple"]
            }
        }, {
            key: "ATTR_DICT",
            get: function() {
                return {
                    a: [0, 1, 2, 3],
                    input: [2, 4, 5, 6, 7, 8, 9, 10, 11],
                    img: [2, 12, 13, 14, 15],
                    form: [5, 6, 16, 17],
                    area: [0, 1, 3, 13, 18, 19],
                    button: [4, 5, 6, 8],
                    iframe: [6, 12],
                    label: [20],
                    map: [6],
                    option: [5, 8, 21, 22],
                    select: [6, 23]
                }
            }
        }, {
            key: "CONSCIOUS_ACTION_INTERVAL",
            get: function() {
                return 18e4
            }
        }]),
        e(i, [{
            key: "sendStorageData",
            value: function(t) {
                _.sendStorageData(t)
            }
        }, {
            key: "equip",
            value: function() {
                var t = this;
                this.addEvent(document, i.E_TYPE.CLICK),
                this.addEvent(document, i.E_TYPE.MOUSEMOVE),
                this.addEvent(document, i.E_TYPE.SCROLL),
                this.addEvent(document, i.E_TYPE.VISIBILITYCHANGE),
                this.addEvent(window, i.E_TYPE.BEFOREUNLOAD),
                this.addEvent(window, i.E_TYPE.HASHCHANGE),
                this.eventHandler({
                    type: i.E_TYPE.LOAD,
                    target: window
                }),
                this.heartbeatInterval = setInterval(function() {
                    t.eventHandler({
                        type: i.E_TYPE.HEARTBEAT,
                        target: window
                    })
                }, y.heartBeatTime)
            }
        }, {
            key: "disarm",
            value: function() {
                this.delEvent(document, i.E_TYPE.CLICK),
                this.delEvent(document, i.E_TYPE.MOUSEMOVE),
                this.delEvent(document, i.E_TYPE.SCROLL),
                this.delEvent(document, i.E_TYPE.VISIBILITYCHANGE),
                this.delEvent(window, i.E_TYPE.BEFOREUNLOAD),
                this.delEvent(window, i.E_TYPE.HASHCHANGE),
                this.eventHandler({
                    type: i.E_TYPE.DISARM,
                    target: window
                }),
                this.heartbeatInterval = clearInterval(this.heartbeatInterval)
            }
        }, {
            key: "track",
            value: function(t, e) {
                var n = window
                  , r = e;
                g.isElement(e) && (n = e,
                r = void 0),
                this.eventHandler({
                    type: t,
                    target: n,
                    extData: r
                })
            }
        }, {
            key: "eventHandler",
            value: function(t) {
                try {
                    if (this.preventDefault && !/agl-cover/.test(t.target.className) && (t.stopPropagation(),
                    t.preventDefault()),
                    this.noNeedToLog(t))
                        return;
                    var e = this.getCurrTime()
                      , n = {
                        ts: e.ts,
                        tz: e.tz,
                        logid: g.uuid(),
                        production: y.production,
                        cert: y.cert,
                        sessionid: y.sessionid,
                        uid: y.uid,
                        optid: y.optid,
                        referrer: document.referrer,
                        location: g.pick(location, i.LOCATION_KEYS),
                        type: t.type,
                        a: this.getAttrPath(t),
                        position: this.getPosition(t),
                        ext: y.ext
                    };
                    x.log(n),
                    this.dispatch(new m(i.EVENT.TRACK_LOG,{
                        logData: n,
                        evt: t
                    }))
                } catch (t) {}
            }
        }, {
            key: "addEvent",
            value: function(t, e) {
                t.addEventListener(e, this.eventHandler, !0)
            }
        }, {
            key: "delEvent",
            value: function(t, e) {
                t.removeEventListener(e, this.eventHandler, !0)
            }
        }, {
            key: "noNeedToLog",
            value: function(t) {
                var e = this;
                if (~y.stopEvents.indexOf(t.type))
                    return !0;
                if (t.type === i.E_TYPE.HEARTBEAT && document.hidden)
                    return !0;
                if (t.type === i.E_TYPE.LOAD)
                    return setTimeout(function() {
                        e.dispatch(new m(i.EVENT.URL_CHANGE,{
                            url: t.target.location.href
                        }))
                    }, 50),
                    !1;
                if (t.type === i.E_TYPE.MOUSEMOVE || t.type === i.E_TYPE.SCROLL) {
                    if (this.getCurrTime().ts - this.consciousActionTs < i.CONSCIOUS_ACTION_INTERVAL)
                        return !0;
                    this.consciousActionTs = this.getCurrTime().ts
                }
                return (t.type === i.E_TYPE.FOCUS || t.type === i.E_TYPE.BLUR) && "INPUT" !== t.target.tagName && "text" !== t.target.type || t.type === i.E_TYPE.HASHCHANGE && (this.dispatch(new m(i.EVENT.URL_CHANGE,{
                    url: t.newURL
                })),
                !0)
            }
        }, {
            key: "getPath",
            value: function(t, e) {
                var n = [];
                if (!t.parentNode || t === e)
                    return n;
                for (var r = t; n.unshift(r),
                (r = r.parentNode) !== e; )
                    ;
                return n
            }
        }, {
            key: "getAttrPath",
            value: function(t) {
                var e, o = this;
                return t.type !== i.E_TYPE.VISIBILITYCHANGE ? t.type === i.E_TYPE.LOAD || t.type === i.E_TYPE.BEFOREUNLOAD || t.type === i.E_TYPE.HEARTBEAT ? [s({}, i.CUSTOM_KEY.TAG, "window")] : !i.E_TYPE[t.type.toUpperCase()] && t.extData ? [f(s({}, i.CUSTOM_KEY.TAG, "window"), t.extData)] : this.getPath(t.target, this.rootNode).map(function(t, e, n) {
                    var r = {
                        index: e,
                        nodeList: n
                    };
                    return o.getInfo(t, [].concat(d(o.getInfoFuncs), [y.getInfoFunc]), r)
                }) : [(e = {},
                s(e, i.CUSTOM_KEY.TAG, "document"),
                s(e, "hidden", document ? document.hidden : null),
                e)]
            }
        }, {
            key: "getInfo",
            value: function(n, t, r) {
                var e = t.reduce(function(t, e) {
                    return f({}, t, e(n, r))
                }, {});
                return y.stopAttrs.forEach(function(t) {
                    delete e[t]
                }),
                e
            }
        }, {
            key: "getNodeBasicInfo",
            value: function(t) {
                var e, n = t.className.split(" ").filter(function(t) {
                    return "" !== t && !i.REG.DROP_CLASSNAME.test(t)
                }).join(" ");
                return s(e = {}, i.CUSTOM_KEY.TAG, t.tagName.toLowerCase()),
                s(e, "id", t.getAttribute("id") ? t.getAttribute("id") : void 0),
                s(e, "class", n || void 0),
                e
            }
        }, {
            key: "getNodeProps",
            value: function(n) {
                return i.PROPS.reduce(function(t, e) {
                    return f({}, t, s({}, "_" + e, n[e]))
                }, {})
            }
        }, {
            key: "getNodeText",
            value: function(t) {
                return s({}, i.CUSTOM_KEY.TEXT, A(t).childText() || void 0)
            }
        }, {
            key: "getNodeIndex",
            value: function(t) {
                var e, n = A(t).index();
                return s(e = {}, i.CUSTOM_KEY.INDEX, n >> O.DUO.MAX_BIT_NUM),
                s(e, i.CUSTOM_KEY.SAME_INDEX, n & O.DUO.SPLIT_BIT_VAL),
                e
            }
        }, {
            key: "getNodeAttrs",
            value: function(o) {
                var t = i.ATTR_DICT[o.tagName.toLowerCase()];
                return t ? t.reduce(function(t, e) {
                    var n = i.ATTRS[e]
                      , r = o.getAttribute(n);
                    return f({}, t, null === r ? {} : s({}, n, r))
                }, {}) : {}
            }
        }, {
            key: "getNodeOffset",
            value: function(t) {
                var e;
                return s(e = {}, i.CUSTOM_KEY.S_TOP, t.scrollTop ? t.scrollTop : void 0),
                s(e, i.CUSTOM_KEY.S_LEFT, t.scrollLeft ? t.scrollLeft : void 0),
                e
            }
        }, {
            key: "getPosition",
            value: function(t) {
                return {
                    x: g.isUndefined(t.clientX) ? 0 : t.clientX,
                    y: g.isUndefined(t.clientY) ? 0 : t.clientY
                }
            }
        }, {
            key: "getCurrTime",
            value: function() {
                var t = new Date;
                return {
                    ts: t.getTime(),
                    tz: -Math.round(t.getTimezoneOffset() / 60)
                }
            }
        }, {
            key: "allowDefaultEvents",
            value: function() {
                this.preventDefault = !1
            }
        }, {
            key: "preventDefaultEvents",
            value: function() {
                this.preventDefault = !0
            }
        }]),
        i
    }()
      , L = function(t) {
        function r(t, e) {
            var n;
            return l(this, r),
            (n = u(this, o(r).call(this))).target = t,
            n.targetOrigin = e,
            n.messageHandler = g.bind(n.messageHandler, a(n)),
            n.equip(),
            n
        }
        return n(r, E),
        e(r, null, [{
            key: "EVENT",
            get: function() {
                return {
                    MSG_RECEIVED: "MSG_RECEIVED"
                }
            }
        }]),
        e(r, [{
            key: "equip",
            value: function() {
                window.addEventListener("message", this.messageHandler, !0)
            }
        }, {
            key: "disarm",
            value: function() {
                window.removeEventListener("message", this.messageHandler, !0)
            }
        }, {
            key: "messageHandler",
            value: function(t) {
                (t.origin || t.originalEvent.origin).indexOf(this.targetOrigin) < 0 || this.dispatch(new m(r.EVENT.MSG_RECEIVED,t.data))
            }
        }, {
            key: "tweet",
            value: function(t, e) {
                this.target && this.target.postMessage && this.target !== window && this.target.postMessage({
                    type: t,
                    data: e
                }, "*")
            }
        }]),
        r
    }()
      , N = function(t) {
        function c() {
            var t;
            return l(this, c),
            (t = u(this, o(c).call(this)))._isOn = !1,
            t._enterHandler = g.bind(t._enterHandler, a(t)),
            t._leaveHandler = g.bind(t._leaveHandler, a(t)),
            t._coverHandler = g.bind(t._coverHandler, a(t)),
            t._panelSize = {
                W: 200,
                H: 300
            },
            t._insertCSS(),
            t
        }
        return n(c, E),
        e(c, null, [{
            key: "css",
            get: function() {
                var t = "rgba(255,87,34,0.99)"
                  , e = "rgba(255,87,34,0.4)"
                  , n = "rgba(33,33,33,0.99)"
                  , r = "rgba(33,33,33,0.6)"
                  , o = "!important"
                  , i = "\n                position: absolute ".concat(o, ";\n                top: 0;\n                left: 0;\n                z-index: 9 ").concat(o, ";\n        ");
                return "\n            .agl-hover {\n                outline: 2px solid ".concat("rgba(244,67,54,0.99)", " ").concat(o, ";\n                background-color: ").concat("rgba(244,67,54,0.2)", " ").concat(o, ";\n                box-shadow: 0 2px 8px rgba(0, 0, 0, 0.8) ").concat(o, ";\n            }\n            .agl-highlight-current {\n                outline: 2px solid ").concat(t, " ").concat(o, ";\n                background-color: ").concat(e, " ").concat(o, ";\n            }\n            .agl-highlight-similar {\n                outline: 2px dashed ").concat(t, " ").concat(o, ";\n                background-color: ").concat(e, " ").concat(o, ";\n            }\n            .agl-highlight-group {\n                outline: 4px double ").concat(t, " ").concat(o, ";\n                background-color: ").concat(e, " ").concat(o, ";\n            }\n            .agl-cover-current {\n                ").concat(i, "\n                outline: 2px solid ").concat(n, " ").concat(o, ";\n                background-color: ").concat(r, " ").concat(o, ";\n            }\n            .agl-cover-similar {\n                ").concat(i, "\n                outline: 2px dashed ").concat(n, " ").concat(o, ";\n                background-color: ").concat(r, " ").concat(o, ";\n            }\n            .agl-cover-group {\n                ").concat(i, "\n                outline: 4px double ").concat(n, " ").concat(o, ";\n                background-color: ").concat(r, " ").concat(o, ";\n            }\n            .agl-cover-focus {\n                outline: 3px solid rgba(255,165,0,0.99) ").concat(o, ";\n                background-color: rgba(255,165,0,0.4) ").concat(o, ";\n            }\n        ")
            }
        }, {
            key: "EVENT",
            get: function() {
                return {
                    COVER_CLICK: "COVER_CLICKE",
                    COVER_MOUSEENTER: "COVER_MOUSEENTER",
                    COVER_MOUSELEAVE: "COVER_MOUSELEAVE",
                    HIGHLIGHT_POSITION: "HIGHLIGHT_POSITION"
                }
            }
        }, {
            key: "TYPE_2_CLASS",
            get: function() {
                return {
                    "-1": "group",
                    0: "current",
                    1: "similar",
                    2: "current"
                }
            }
        }]),
        e(c, [{
            key: "_insertCSS",
            value: function() {
                try {
                    var t = document.createElement("style");
                    t.type = "text/css",
                    t.innerHTML = c.css;
                    var e = document.getElementsByTagName("script")[0];
                    e.parentNode.insertBefore(t, e)
                } catch (t) {}
            }
        }, {
            key: "_getPosition",
            value: function(t) {
                var e = A(t);
                if (!e.length)
                    return {
                        x: 0,
                        y: 0
                    };
                var n = e.offset()
                  , r = document.documentElement.clientWidth
                  , o = document.documentElement.clientHeight
                  , i = n.left + n.width - document.body.scrollLeft + 5
                  , a = n.top + n.height - document.body.scrollTop;
                return i + this._panelSize.W > r && (i = r - this._panelSize.W),
                a + this._panelSize.H > o && (a = o - this._panelSize.H),
                i < 0 && (i = 0),
                a < 0 && (a = 0),
                {
                    x: i,
                    y: a
                }
            }
        }, {
            key: "_enterHandler",
            value: function(t) {
                A('*[contains(@class,"agl-hover")]').removeClass("agl-hover"),
                t.target === document || /agl-cover-/.test(t.target.className) || A(t.target).addClass("agl-hover")
            }
        }, {
            key: "_leaveHandler",
            value: function(t) {
                t.target !== document && A(t.target).removeClass("agl-hover")
            }
        }, {
            key: "start",
            value: function() {
                this._isOn = !0,
                document.addEventListener("mouseenter", this._enterHandler, !0),
                document.addEventListener("mouseleave", this._leaveHandler, !0)
            }
        }, {
            key: "stop",
            value: function() {
                this._isOn = !1,
                document.removeEventListener("mouseenter", this._enterHandler, !0),
                document.removeEventListener("mouseleave", this._leaveHandler, !0)
            }
        }, {
            key: "highlight",
            value: function(t) {
                var e = 1 < arguments.length && void 0 !== arguments[1] && arguments[1];
                if (this.clearHighlight(),
                t.forEach(function(t) {
                    A(t.query).addClass("agl-highlight-".concat(c.TYPE_2_CLASS[t.type]))
                }),
                e && 0 < t.length) {
                    var n = A(t[0].query);
                    if (0 < n.length) {
                        var r = n.offset()
                          , o = document.documentElement.clientWidth
                          , i = document.documentElement.clientHeight;
                        A("body").scrollTop(r.top - .5 * i),
                        A("body").scrollLeft(r.left - .5 * o),
                        this.dispatch(new m(c.EVENT.HIGHLIGHT_POSITION,this._getPosition(n[0])))
                    }
                }
            }
        }, {
            key: "clearHighlight",
            value: function() {
                A('*[contains(@class,"agl-hover")]').removeClass("agl-hover");
                A('*[contains(@class,"agl-highlight-")]').removeClass("agl-highlight-current agl-highlight-similar agl-highlight-group")
            }
        }, {
            key: "focusCovers",
            value: function(t) {
                A('*[contains(@class,"agl-cover-")]').removeClass("agl-cover-focus"),
                t.forEach(function(t) {
                    A('*[contains(@class,"agl-cover-")][@data-id=' + t + "]").each(function(t) {
                        A(t).addClass("agl-cover-focus")
                    })
                })
            }
        }, {
            key: "addCovers",
            value: function(t) {
                var u = this;
                this.highlight([]),
                t && t.forEach(function(s) {
                    s.querys.map(function(t) {
                        return A(t)
                    }).reduce(function(t, e) {
                        return [].concat(d(t), d(e))
                    }, []).forEach(function(t) {
                        var e = A(t)
                          , n = e.parent();
                        if (e.length && n.length) {
                            var r = e.offset()
                              , o = e.offsetParent().offset()
                              , i = A().create('<div data-id="' + s.id + '" class="agl-cover-' + c.TYPE_2_CLASS[s.type] + '"></div>');
                            i.css({
                                width: "".concat(r.width, "px"),
                                height: "".concat(r.height, "px"),
                                top: "".concat(r.top - o.top, "px"),
                                left: "".concat(r.left - o.left, "px")
                            });
                            var a = i[0];
                            a.dataId = s.id,
                            a.dataType = s.type,
                            a.addEventListener("click", u._coverHandler),
                            a.addEventListener("mouseenter", u._coverHandler),
                            a.addEventListener("mouseleave", u._coverHandler),
                            A(n).append(i)
                        }
                    })
                })
            }
        }, {
            key: "_coverHandler",
            value: function(t) {
                t.stopPropagation(),
                t.preventDefault();
                var e = c.EVENT["COVER_".concat(t.type.toUpperCase())]
                  , n = t.target;
                this.dispatch(new m(e,{
                    id: n.dataId,
                    type: n.dataType
                }))
            }
        }, {
            key: "clearCovers",
            value: function() {
                A('*[contains(@class,"agl-cover-")]').remove()
            }
        }, {
            key: "isOn",
            get: function() {
                return this._isOn
            }
        }, {
            key: "panelSize",
            set: function(t) {
                this._panelSize = t
            }
        }]),
        c
    }()
      , I = function() {
        function t() {
            var o = this;
            l(this, t);
            var i = {}
              , n = null
              , a = null
              , s = null
              , u = function() {
                n || (n = new S,
                a = new L(y.postTarget,y.postTargetOrigin),
                s = new N,
                window.top !== window && (a.addListener(L.EVENT.MSG_RECEIVED, function(t) {
                    switch (t.data.type) {
                    case "TRACK_ON":
                        n.preventDefaultEvents(),
                        s.start(),
                        s.addCovers(t.data.data.list),
                        s.panelSize = t.data.data.panelSize;
                        break;
                    case "TRACK_OFF":
                        n.allowDefaultEvents(),
                        s.stop(),
                        s.clearCovers();
                        break;
                    case "HIGHLIGHT":
                        s.highlight(t.data.data.list, t.data.data.needReposition);
                        break;
                    case "REFRESH_COVERS":
                        s.clearCovers(),
                        s.addCovers(t.data.data);
                        break;
                    case "CLEAR_HIGHLIGHT":
                        s.clearHighlight();
                        break;
                    case "FOCUS_COVERS":
                        s.focusCovers(t.data.data)
                    }
                }),
                n.addListener(S.EVENT.TRACK_LOG, function(t) {
                    var e = t.data
                      , n = e.logData
                      , r = e.evt;
                    a.tweet("VERIFY_DATA", n),
                    s.isOn && !/agl-cover-/.test(r.target.className) && n.type === S.E_TYPE.CLICK && r.isTrusted && a.tweet("CREATE", n)
                }),
                n.addListener(S.EVENT.URL_CHANGE, function(t) {
                    a.tweet("URL_CHANGE", t.data)
                }),
                s.addListener(N.EVENT.COVER_CLICK, function(t) {
                    a.tweet("CLICK_COVER", t.data)
                }),
                s.addListener(N.EVENT.COVER_MOUSEENTER, function(t) {
                    a.tweet("ENTER_COVER", t.data)
                }),
                s.addListener(N.EVENT.COVER_MOUSELEAVE, function(t) {
                    a.tweet("LEAVE_COVER", t.data)
                }),
                s.addListener(N.EVENT.HIGHLIGHT_POSITION, function(t) {
                    a.tweet("REPOSITION", t.data)
                }),
                a.tweet("READY", y.dump())))
            }
              , c = function(t, e) {
                g.assert(g.isString(t), "custom event type must be string."),
                g.assert(!S.E_TYPE[t.toUpperCase()], 'custom event type can not be "'.concat(t, '".')),
                g.assert(g.isElement(e) || g.isObject(e), "custom event data type must be object or dom element."),
                n.track(t, e)
            };
            this.push = function() {
                for (var t = arguments.length, e = new Array(t), n = 0; n < t; n++)
                    e[n] = arguments[n];
                var r = g.fromPairs(function(n) {
                    return n = n || {},
                    Object.keys(n).map(function(t) {
                        var e = n[t];
                        return "track" === t ? [t, e] : "ext" === t ? [t, g.extend.apply(g, [{}].concat(d(e)))] : [t, e[e.length - 1]]
                    })
                }(g.groupBy(e, function(t) {
                    return t[0]
                }, function(t) {
                    return t[1]
                })));
                !function(t) {
                    if (g.isUndefined(t.uid) || (y.uid = t.uid),
                    g.isUndefined(t.optid) || (y.optid = t.optid),
                    g.isUndefined(t.cert) || (y.cert = t.cert),
                    g.isUndefined(t.getInfoFunc) || (y.getInfoFunc = t.getInfoFunc),
                    g.isUndefined(t.ext) || (y.ext = t.ext,
                    o.ext = y.ext),
                    g.isUndefined(t.stopEvents) || (y.stopEvents = t.stopEvents),
                    g.isUndefined(t.stopAttrs) || (y.stopAttrs = t.stopAttrs),
                    g.isUndefined(t.heartBeatTime) || (y.heartBeatTime = t.heartBeatTime),
                    g.isUndefined(t.logCompressMode) || (y.logCompressMode = t.logCompressMode),
                    g.isUndefined(t.logUrl) || (y.logUrl = t.logUrl),
                    g.isUndefined(t.production) || (y.production = t.production,
                    u()),
                    !g.isUndefined(t.track)) {
                        y.tracks = t.track;
                        var e = c;
                        y.tracks.forEach(function(t) {
                            e.apply(o, t)
                        })
                    }
                }(f({}, i, r))
            }
            ,
            this.stop = function() {
                n && n.disarm(),
                a && a.disarm()
            }
        }
        return e(t, [{
            key: "isAngelia",
            get: function() {
                return !0
            }
        }]),
        t
    }()
      , U = ["file", "radio", "checkbox", "hidden", "button", "image", "reset", "submit"]
      , P = "data-agl-cvt";
    !function() {
        if (!window._agl || !window._agl.isAngelia)
            if (window._bdFcHmtAngelia && window._bdFcHmtAngelia.isAngelia)
                window._agl = window._bdFcHmtAngelia;
            else {
                var t = new I;
                t.push.apply(t, d(window._agl || []).concat([["stopEvents", "input|focus|blur|mousemove|scroll|disarm|hashchange|heartbeat"], ["stopAttrs", "_value|value|placeholder"], ["getInfoFunc", function(t, e) {
                    var n, r = {};
                    if (g.extend(r, function(t) {
                        try {
                            if (t && g.isFunction(t.getAttribute)) {
                                var e = t.getAttribute(P) || t[P];
                                if (null != e)
                                    return s({}, P, e)
                            }
                        } catch (t) {}
                        return {}
                    }(t)),
                    !t || e.index !== e.nodeList.length - 1)
                        return r;
                    var o = t.outerHTML
                      , i = o ? encodeURIComponent(o) : void 0
                      , a = function() {
                        for (var t = "", e = 1, n = document.getElementsByTagName("input"), r = 0, o = n.length; r < o; r++) {
                            var i = n[r].type.toLowerCase();
                            if (-1 === U.indexOf(i))
                                try {
                                    var a = n[r].value.trim()
                                      , s = isNaN(a) ? "c" : "n";
                                    t += "".concat(e, "_").concat(s, "_").concat(a.length, "_").concat(i, ";"),
                                    e++
                                } catch (t) {
                                    continue
                                }
                        }
                        return encodeURIComponent(t.substr(0, t.length - 1))
                    }();
                    return g.extend(r, (s(n = {}, "_hs", i ? c(i) : void 0),
                    s(n, "_uis", a || void 0),
                    n))
                }
                ], ["ext", {
                    _s: "fcagl"
                }]])),
                window._agl = t
            }
    }()
}();
