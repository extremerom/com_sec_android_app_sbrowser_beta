.class public final Lorg/chromium/blink/mojom/PermissionDescriptorExtension;
.super Lorg/chromium/mojo/bindings/Union;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/PermissionDescriptorExtension$Tag;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCameraDevice:Lorg/chromium/blink/mojom/CameraDevicePermissionDescriptor;

.field private mClipboard:Lorg/chromium/blink/mojom/ClipboardPermissionDescriptor;

.field private mFullscreen:Lorg/chromium/blink/mojom/FullscreenPermissionDescriptor;

.field private mMidi:Lorg/chromium/blink/mojom/MidiPermissionDescriptor;

.field private mTopLevelStorageAccess:Lorg/chromium/blink/mojom/TopLevelStorageAccessPermissionDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Union;-><init>()V

    return-void
.end method

.method public static final decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/PermissionDescriptorExtension;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForUnion(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lorg/chromium/blink/mojom/PermissionDescriptorExtension;

    invoke-direct {v1}, Lorg/chromium/blink/mojom/PermissionDescriptorExtension;-><init>()V

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/FullscreenPermissionDescriptor;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/FullscreenPermissionDescriptor;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/PermissionDescriptorExtension;->mFullscreen:Lorg/chromium/blink/mojom/FullscreenPermissionDescriptor;

    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/TopLevelStorageAccessPermissionDescriptor;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/TopLevelStorageAccessPermissionDescriptor;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/PermissionDescriptorExtension;->mTopLevelStorageAccess:Lorg/chromium/blink/mojom/TopLevelStorageAccessPermissionDescriptor;

    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :cond_3
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/CameraDevicePermissionDescriptor;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/CameraDevicePermissionDescriptor;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/PermissionDescriptorExtension;->mCameraDevice:Lorg/chromium/blink/mojom/CameraDevicePermissionDescriptor;

    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :cond_4
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/ClipboardPermissionDescriptor;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ClipboardPermissionDescriptor;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/PermissionDescriptorExtension;->mClipboard:Lorg/chromium/blink/mojom/ClipboardPermissionDescriptor;

    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :cond_5
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/MidiPermissionDescriptor;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/MidiPermissionDescriptor;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/PermissionDescriptorExtension;->mMidi:Lorg/chromium/blink/mojom/MidiPermissionDescriptor;

    iput v2, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    :goto_0
    return-object v1
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;I)V
    .locals 3

    const/16 v0, 0x10

    invoke-virtual {p1, v0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/blink/mojom/PermissionDescriptorExtension;->mFullscreen:Lorg/chromium/blink/mojom/FullscreenPermissionDescriptor;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/chromium/blink/mojom/PermissionDescriptorExtension;->mTopLevelStorageAccess:Lorg/chromium/blink/mojom/TopLevelStorageAccessPermissionDescriptor;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/chromium/blink/mojom/PermissionDescriptorExtension;->mCameraDevice:Lorg/chromium/blink/mojom/CameraDevicePermissionDescriptor;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lorg/chromium/blink/mojom/PermissionDescriptorExtension;->mClipboard:Lorg/chromium/blink/mojom/ClipboardPermissionDescriptor;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lorg/chromium/blink/mojom/PermissionDescriptorExtension;->mMidi:Lorg/chromium/blink/mojom/MidiPermissionDescriptor;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    :goto_0
    return-void
.end method
