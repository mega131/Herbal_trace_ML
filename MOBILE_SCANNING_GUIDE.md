# 📱 Mobile QR Code Scanning Guide

## Issue: "No Network" or "Not Connected" Error

When scanning QR codes on mobile devices, you might see network errors because the QR codes point to `localhost:5173` which only works on your computer.

## ✅ Solutions:

### Option 1: Use Public Demo (Recommended)
The QR codes now automatically point to a public demo site that works on any mobile device:
- **URL:** `https://herbal-trace-demo.netlify.app/demo`
- **Works:** On any mobile device with internet
- **Shows:** Complete product traceability demo

### Option 2: Network Access (Same WiFi)
If you want to access your local development server from mobile:

1. **Find your computer's IP address:**
   - Windows: Open Command Prompt → Type `ipconfig` → Look for IPv4 Address
   - Mac: System Preferences → Network → Look for IP Address
   - Example: `192.168.1.100`

2. **Update the network URL:**
   - Replace `localhost:5173` with `192.168.1.100:5173`
   - Make sure mobile device is on same WiFi network

3. **Access from mobile:**
   - Open browser on mobile
   - Go to `http://192.168.1.100:5173/demo`
   - Should work if both devices are on same network

### Option 3: Use Network URL Button
In the manufacturer dashboard:
1. Click "📶 Copy Network URL" button
2. Paste the URL in mobile browser
3. Or create a new QR code with the network URL

## 🔧 For Developers:

### Update QR Code URLs:
```javascript
// Instead of localhost
const qrUrl = `${window.location.origin}/demo`;

// Use public demo or network IP
const qrUrl = window.location.hostname === 'localhost' 
  ? `https://herbal-trace-demo.netlify.app/demo`
  : `${window.location.origin}/demo`;
```

### Test Mobile Access:
1. Generate QR code with public demo URL
2. Scan with mobile device
3. Should open demo page without network errors

## 📋 Quick Test:
1. **Desktop:** Login as manufacturer → Generate QR
2. **Mobile:** Scan QR with camera app
3. **Result:** Should open demo traceability page

The system now uses mobile-friendly URLs that work on any device! 🎉