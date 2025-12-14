.class public final Lorg/chromium/components/content_settings/ContentSettingsType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/content_settings/ContentSettingsType$EnumType;
    }
.end annotation


# static fields
.field public static final ADS:I = 0x19

.field public static final ADS_DATA:I = 0x1a

.field public static final ALL_SCREEN_CAPTURE:I = 0x58

.field public static final ANTI_ABUSE:I = 0x55

.field public static final ANTI_TRACKING:I = 0x3a

.field public static final APP_BANNER:I = 0x10

.field public static final AR:I = 0x37

.field public static final ARE_SUSPICIOUS_NOTIFICATIONS_ALLOWLISTED_BY_USER:I = 0x75

.field public static final AUTOMATIC_DOWNLOADS:I = 0xc

.field public static final AUTOMATIC_FULLSCREEN:I = 0x66

.field public static final AUTOPLAY:I = 0x16

.field public static final AUTO_DARK_WEB_CONTENT:I = 0x48

.field public static final AUTO_PICTURE_IN_PICTURE:I = 0x5f

.field public static final AUTO_SELECT_CERTIFICATE:I = 0x6

.field public static final BACKGROUND_FETCH:I = 0x24

.field public static final BACKGROUND_SYNC:I = 0x15

.field public static final BLUETOOTH_CHOOSER_DATA:I = 0x32

.field public static final BLUETOOTH_GUARD:I = 0x14

.field public static final BLUETOOTH_SCANNING:I = 0x2a

.field public static final CAMERA_PAN_TILT_ZOOM:I = 0x3b

.field public static final CAPTURED_SURFACE_CONTROL:I = 0x62

.field public static final CLIENT_HINTS:I = 0x1f

.field public static final CLIPBOARD_READ_WRITE:I = 0x33

.field public static final CLIPBOARD_SANITIZED_WRITE:I = 0x34

.field public static final CONTROLLED_FRAME:I = 0x76

.field public static final COOKIES:I = 0x0

.field public static final COOKIE_CONTROLS_METADATA:I = 0x59

.field public static final DEFAULT:I = -0x1

.field public static final DEPRECATED_ACCESSIBILITY_EVENTS:I = 0x21

.field public static final DEPRECATED_FEDERATED_IDENTITY_ACTIVE_SESSION:I = 0x47

.field public static final DEPRECATED_PPAPI_BROKER:I = 0xb

.field public static final DIRECT_SOCKETS:I = 0x69

.field public static final DIRECT_SOCKETS_PRIVATE_NETWORK_ACCESS:I = 0x73

.field public static final DISPLAY_CAPTURE:I = 0x41

.field public static final DISPLAY_MEDIA_SYSTEM_AUDIO:I = 0x6e

.field public static final DURABLE_STORAGE:I = 0x12

.field public static final FEDERATED_IDENTITY_API:I = 0x4a

.field public static final FEDERATED_IDENTITY_AUTO_REAUTHN_PERMISSION:I = 0x53

.field public static final FEDERATED_IDENTITY_IDENTITY_PROVIDER_REGISTRATION:I = 0x54

.field public static final FEDERATED_IDENTITY_IDENTITY_PROVIDER_SIGNIN_STATUS:I = 0x50

.field public static final FEDERATED_IDENTITY_SHARING:I = 0x43

.field public static final FILE_SYSTEM_ACCESS_CHOOSER_DATA:I = 0x42

.field public static final FILE_SYSTEM_ACCESS_EXTENDED_PERMISSION:I = 0x60

.field public static final FILE_SYSTEM_ACCESS_RESTORE_PERMISSION:I = 0x61

.field public static final FILE_SYSTEM_LAST_PICKED_DIRECTORY:I = 0x40

.field public static final FILE_SYSTEM_READ_GUARD:I = 0x38

.field public static final FILE_SYSTEM_WRITE_GUARD:I = 0x30

.field public static final FORMFILL_METADATA:I = 0x46

.field public static final GEOLOCATION:I = 0x4

.field public static final HAND_TRACKING:I = 0x71

.field public static final HID_CHOOSER_DATA:I = 0x2c

.field public static final HID_GUARD:I = 0x2b

.field public static final HTTPS_ENFORCED:I = 0x57

.field public static final HTTP_ALLOWED:I = 0x45

.field public static final IDLE_DETECTION:I = 0x26

.field public static final IMAGES:I = 0x1

.field public static final IMPORTANT_SITE_INFO:I = 0x17

.field public static final INSECURE_PRIVATE_NETWORK:I = 0x3d

.field public static final INTENT_PICKER_DISPLAY:I = 0x25

.field public static final JAVASCRIPT:I = 0x2

.field public static final JAVASCRIPT_JIT:I = 0x44

.field public static final JAVASCRIPT_OPTIMIZER:I = 0x6f

.field public static final KEYBOARD_LOCK:I = 0x6a

.field public static final LEGACY_COOKIE_ACCESS:I = 0x2f

.field public static final LEGACY_COOKIE_SCOPE:I = 0x74

.field public static final LOCAL_FONTS:I = 0x3e

.field public static final LOCAL_NETWORK_ACCESS:I = 0x78

.field public static final MAX_VALUE:I = 0x78

.field public static final MEDIASTREAM_CAMERA:I = 0x9

.field public static final MEDIASTREAM_MIC:I = 0x8

.field public static final MEDIA_ENGAGEMENT:I = 0x1d

.field public static final MIDI:I = 0x1b

.field public static final MIDI_SYSEX:I = 0xd

.field public static final MIN_VALUE:I = -0x1

.field public static final MIXEDSCRIPT:I = 0x7

.field public static final NFC:I = 0x31

.field public static final NOTIFICATIONS:I = 0x5

.field public static final NOTIFICATION_INTERACTIONS:I = 0x4b

.field public static final NOTIFICATION_PERMISSION_REVIEW:I = 0x4d

.field public static final PASSWORD_PROTECTION:I = 0x1c

.field public static final PAYMENT_HANDLER:I = 0x22

.field public static final PERIODIC_BACKGROUND_SYNC:I = 0x29

.field public static final PERMISSION_AUTOBLOCKER_DATA:I = 0x18

.field public static final PERMISSION_AUTOREVOCATION_DATA:I = 0x3f

.field public static final POINTER_LOCK:I = 0x6b

.field public static final POPUPS:I = 0x3

.field public static final PRIVATE_NETWORK_CHOOSER_DATA:I = 0x4f

.field public static final PRIVATE_NETWORK_GUARD:I = 0x4e

.field public static final PROTECTED_MEDIA_IDENTIFIER:I = 0xf

.field public static final PROTOCOL_HANDLERS:I = 0xa

.field public static final REDUCED_ACCEPT_LANGUAGE:I = 0x4c

.field public static final REQUEST_DESKTOP_SITE:I = 0x49

.field public static final REVOKED_ABUSIVE_NOTIFICATION_PERMISSIONS:I = 0x6c

.field public static final REVOKED_DISRUPTIVE_NOTIFICATION_PERMISSIONS:I = 0x77

.field public static final REVOKED_UNUSED_SITE_PERMISSIONS:I = 0x51

.field public static final SAFE_BROWSING_URL_CHECK_DATA:I = 0x35

.field public static final SENSORS:I = 0x20

.field public static final SERIAL_CHOOSER_DATA:I = 0x28

.field public static final SERIAL_GUARD:I = 0x27

.field public static final SITE_ENGAGEMENT:I = 0x11

.field public static final SMART_CARD_DATA:I = 0x64

.field public static final SMART_CARD_GUARD:I = 0x63

.field public static final SOUND:I = 0x1e

.field public static final SPEAKER_SELECTION:I = 0x68

.field public static final SSL_CERT_DECISIONS:I = 0xe

.field public static final STORAGE_ACCESS:I = 0x39

.field public static final STORAGE_ACCESS_HEADER_ORIGIN_TRIAL:I = 0x70

.field public static final SUB_APP_INSTALLATION_PROMPTS:I = 0x67

.field public static final THIRD_PARTY_STORAGE_PARTITIONING:I = 0x56

.field public static final TOP_LEVEL_STORAGE_ACCESS:I = 0x52

.field public static final TOP_LEVEL_TPCD_ORIGIN_TRIAL:I = 0x5e

.field public static final TOP_LEVEL_TPCD_TRIAL:I = 0x5d

.field public static final TPCD_HEURISTICS_GRANTS:I = 0x5a

.field public static final TPCD_METADATA_GRANTS:I = 0x5b

.field public static final TPCD_TRIAL:I = 0x5c

.field public static final TRACKING_PROTECTION:I = 0x6d

.field public static final USB_CHOOSER_DATA:I = 0x13

.field public static final USB_GUARD:I = 0x23

.field public static final VR:I = 0x36

.field public static final WAKE_LOCK_SCREEN:I = 0x2d

.field public static final WAKE_LOCK_SYSTEM:I = 0x2e

.field public static final WEB_APP_INSTALLATION:I = 0x72

.field public static final WEB_PRINTING:I = 0x65

.field public static final WINDOW_MANAGEMENT:I = 0x3c


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    const/4 v0, -0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x78

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static toKnownValue(I)I
    .locals 0

    return p0
.end method

.method public static validate(I)V
    .locals 1

    invoke-static {p0}, Lorg/chromium/components/content_settings/ContentSettingsType;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
