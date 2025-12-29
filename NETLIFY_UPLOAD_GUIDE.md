# How to Upload to Netlify

## Step-by-Step Instructions

### What to Upload:
**Upload the `build/web` folder** - NOT the `build` folder!

### Visual Guide:

```
your-project/
├── build/                    ❌ DON'T upload this
│   ├── app/
│   ├── flutter_assets/
│   └── web/                  ✅ UPLOAD THIS FOLDER!
│       ├── index.html        ← Must be at root
│       ├── _redirects        ← Must be at root
│       ├── main.dart.js
│       ├── assets/
│       ├── canvaskit/
│       └── icons/
```

### Steps:

1. **Open File Explorer** and navigate to your project
2. **Go into the `build` folder**
3. **Find the `web` folder inside `build`**
4. **Upload the entire `web` folder** to Netlify (drag and drop)

### What Should Be in the Uploaded Folder:

When you upload `build/web`, Netlify should see these files at the root:
- ✅ `index.html`
- ✅ `_redirects` (this fixes the 404 error!)
- ✅ `main.dart.js`
- ✅ `assets/` (folder)
- ✅ `canvaskit/` (folder)
- ✅ `icons/` (folder)
- ✅ Other files...

### Quick Check:

After uploading, if you look at your files in Netlify, you should see `index.html` and `_redirects` at the same level (both at the root).

