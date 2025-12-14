.class public Lcom/sec/terrace/content/browser/TinWebContentsImpl;
.super Lorg/chromium/content/browser/webcontents/WebContentsImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/TinWebContentsImpl$TinSmartClipCallback;
    }
.end annotation


# static fields
.field private static final TARGET_APP_PACKAGE_NAMES:[Ljava/lang/String;


# instance fields
.field private mSmartClipImageDataCallback:Lcom/sec/terrace/content/browser/TinWebContentsImpl$TinSmartClipCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "com.samsung.android.app.smartcapture.aiselect"

    const-string v1, "com.samsung.android.app.sdk.deepsky"

    const-string v2, "com.samsung.android.app.smartcapture"

    const-string v3, "com.samsung.android.app.smartcapture.aiassist"

    const-string v4, "com.samsung.android.app.dressroom"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/content/browser/TinWebContentsImpl;->TARGET_APP_PACKAGE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLorg/chromium/content_public/browser/NavigationController;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;-><init>(JLorg/chromium/content_public/browser/NavigationController;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/content/browser/TinWebContentsImpl;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/TinWebContentsImpl;->grantUriPermissionToRequiredPackages(Landroid/net/Uri;)V

    return-void
.end method

.method public static create(JLorg/chromium/content_public/browser/NavigationController;)Lorg/chromium/content/browser/webcontents/WebContentsImpl;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/terrace/content/browser/TinWebContentsImpl;-><init>(JLorg/chromium/content_public/browser/NavigationController;)V

    return-object v0
.end method

.method private grantUriPermissionToRequiredPackages(Landroid/net/Uri;)V
    .locals 5

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/sec/terrace/content/browser/TinWebContentsImpl;->TARGET_APP_PACKAGE_NAMES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x1

    invoke-virtual {p0, v3, p1, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onSmartClipImageDataExtracted(Landroid/graphics/Bitmap;IIILcom/sec/terrace/content/browser/TinWebContentsImpl$TinSmartClipCallback;)V
    .locals 0
    .param p4    # I
        .annotation build Lcom/sec/terrace/browser/smart_clip/mojom/SmartClipImageExtractionStatus$EnumType;
        .end annotation
    .end param
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p4}, Lcom/sec/terrace/browser/smart_clip/mojom/SmartClipImageExtractionStatus;->validate(I)V

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/sec/terrace/content/browser/TinWebContentsImpl$TinSmartClipCallback;->onSmartClipImageDataExtracted(Landroid/graphics/Bitmap;III)V

    return-void
.end method


# virtual methods
.method public createObject(Ljava/lang/Class;Lorg/chromium/content_public/browser/WebContents$UserDataFactory;)Lorg/chromium/base/UserData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/chromium/base/UserData;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/chromium/content_public/browser/WebContents$UserDataFactory<",
            "TT;>;)TT;"
        }
    .end annotation

    const-class v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$UserDataFactoryLazyHolder;->INSTANCE:Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    goto :goto_0

    :cond_0
    const-class v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p2, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$UserDataFactoryLazyHolder;->INSTANCE:Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    goto :goto_0

    :cond_1
    const-class v0, Lorg/chromium/content/browser/GestureListenerManagerImpl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p2, Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl$UserDataFactoryLazyHolder;->INSTANCE:Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    goto :goto_0

    :cond_2
    const-class v0, Lorg/chromium/content/browser/input/SelectPopup;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p2, Lcom/sec/terrace/content/browser/input/TinSelectPopup$UserDataFactoryLazyHolder;->INSTANCE:Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    goto :goto_0

    :cond_3
    const-class v0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p2, Lcom/sec/terrace/content/browser/TinWebContentsAccessibilityImpl$UserDataFactoryLazyHolder;->INSTANCE:Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    :cond_4
    :goto_0
    invoke-interface {p2, p0}, Lorg/chromium/content_public/browser/WebContents$UserDataFactory;->create(Lorg/chromium/content_public/browser/WebContents;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/base/UserData;

    return-object p0
.end method

.method public getSmartClipImageData(IIIIII)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lcom/sec/terrace/content/browser/TinWebContentsImpl;->mSmartClipImageDataCallback:Lcom/sec/terrace/content/browser/TinWebContentsImpl$TinSmartClipCallback;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result v1

    float-to-int v1, v1

    sub-int v7, p2, v1

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v2

    iget-wide v3, v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    iget-object v5, v0, Lcom/sec/terrace/content/browser/TinWebContentsImpl;->mSmartClipImageDataCallback:Lcom/sec/terrace/content/browser/TinWebContentsImpl$TinSmartClipCallback;

    move v6, p1

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-interface/range {v2 .. v11}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->requestSmartClipImageExtract(JLorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;IIIIII)V

    return-void
.end method

.method public requestContext(Landroid/os/Bundle;Lorg/chromium/content/browser/webcontents/WebContentsImpl$RequestContextCallback;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/Terrace;->requestContext(Landroid/os/Bundle;Lorg/chromium/content/browser/webcontents/WebContentsImpl$RequestContextCallback;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, ""

    invoke-interface {p2, p0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$RequestContextCallback;->run(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setSmartClipImageResultHandler(Landroid/os/Handler;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinWebContentsImpl;->mSmartClipImageDataCallback:Lcom/sec/terrace/content/browser/TinWebContentsImpl$TinSmartClipCallback;

    return-void

    :cond_0
    new-instance v0, Lcom/sec/terrace/content/browser/TinWebContentsImpl$TinSmartClipCallback;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/content/browser/TinWebContentsImpl$TinSmartClipCallback;-><init>(Lcom/sec/terrace/content/browser/TinWebContentsImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinWebContentsImpl;->mSmartClipImageDataCallback:Lcom/sec/terrace/content/browser/TinWebContentsImpl$TinSmartClipCallback;

    return-void
.end method

.method public updateWebContentsVisibility(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/TinContentView;->isAllowedPackage(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->setAxAllowed(Z)V

    :cond_0
    invoke-super {p0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->updateWebContentsVisibility(I)V

    return-void
.end method
