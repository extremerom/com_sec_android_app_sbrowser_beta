.class public final Lorg/chromium/blink/mojom/WebPreferences;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public accelerated2dCanvasEnabled:Z

.field public acceleratedFiltersEnabled:Z

.field public acceleratedVideoDecodeEnabled:Z

.field public allowFileAccessFromFileUrls:Z

.field public allowGeolocationOnInsecureOrigins:Z

.field public allowMixedContentUpgrades:Z

.field public allowNonEmptyNavigatorPlugins:Z

.field public allowRunningInsecureContent:Z

.field public allowScriptsToCloseWindows:Z

.field public allowUniversalAccessFromFileUrls:Z

.field public alwaysShowFocus:Z

.field public animationPolicy:I

.field public antiTrackingEnabled:Z

.field public antialiased2dCanvasDisabled:Z

.field public antialiasedClips2dCanvasEnabled:Z

.field public autoZoomFocusedEditableToLegibleScale:Z

.field public automaticStorageAccessState:I

.field public autoplayAllowed:Z

.field public autoplayPolicy:I

.field public availableHoverTypes:I

.field public availablePointerTypes:I

.field public backgroundPlayEnabled:Z

.field public baitElementOverrideEnabled:Z

.field public baitJavascriptDetectionEnabled:Z

.field public barrelButtonForDragEnabled:Z

.field public blockAutoDownloadEnabled:Z

.field public blockFixedFrameAllowedStrings:Ljava/lang/String;

.field public blockFixedFrameEnabled:Z

.field public blockMixedPluginContent:Z

.field public blockPluginFingerprintingEnabled:Z

.field public blockWebFingerprintingAllowedDomains:Ljava/lang/String;

.field public blockWebFingerprintingEnabled:Z

.field public canvas2dLayersEnabled:Z

.field public clobberUserAgentInitialScaleQuirk:Z

.field public cnameCloakingEnabled:Z

.field public compactModeEnabled:Z

.field public containerCullingEnabled:Z

.field public contentBlockerEnabled:Z

.field public contentBlockerStatisticsEnabled:Z

.field public contextMenuOnMouseUp:Z

.field public cookieEnabled:Z

.field public cssHexAlphaColorEnabled:Z

.field public cursiveFontFamilyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/mojo_base/mojom/String16;",
            ">;"
        }
    .end annotation
.end field

.field public dataSaverEnabled:Z

.field public databasesEnabled:Z

.field public defaultContentBlockerEnabled:Z

.field public defaultEncoding:Ljava/lang/String;

.field public defaultFixedFontSize:I

.field public defaultFontSize:I

.field public defaultMaximumPageScaleFactor:F

.field public defaultMinimumPageScaleFactor:F

.field public defaultVideoPosterUrl:Lorg/chromium/url/mojom/Url;

.field public deferredFiltersEnabled:Z

.field public deviceScaleAdjustment:F

.field public disableAcceleratedSmallCanvases:Z

.field public disableIpcFloodingProtection:Z

.field public disableReadingFromCanvas:Z

.field public disableWebauthn:Z

.field public dnsPrefetchingEnabled:Z

.field public doNotUpdateSelectionOnMutatingSelectionRange:Z

.field public domPasteEnabled:Z

.field public dontSendKeyEventsToJavascript:Z

.field public doubleTapToZoomEnabled:Z

.field public dynamicSafeAreaInsetsEnabled:Z

.field public editingBehavior:I

.field public embeddedMediaExperienceEnabled:Z

.field public enableScrollAnimator:Z

.field public fantasyFontFamilyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/mojo_base/mojom/String16;",
            ">;"
        }
    .end annotation
.end field

.field public fixedFontFamilyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/mojo_base/mojom/String16;",
            ">;"
        }
    .end annotation
.end field

.field public fontScaleFactor:F

.field public fontWeightAdjustment:I

.field public forceDarkBehavior:I

.field public forceDarkModeEnabled:Z

.field public forceEnableZoom:Z

.field public forceZeroLayoutHeight:Z

.field public fullAntiAdblockAvoidanceEnabled:Z

.field public fullscreenSupported:Z

.field public hideDownloadUi:Z

.field public hideScrollbars:Z

.field public highContrastModeEnabled:Z

.field public hyperlinkAuditingEnabled:Z

.field public ignoreMainFrameOverflowHiddenQuirk:Z

.field public imagesEnabled:Z

.field public immersiveModeEnabled:Z

.field public inForcedColors:Z

.field public initializeAtMinimumPageScale:Z

.field public invertedColors:Z

.field public isForcedColorsDisabled:Z

.field public javascriptCanAccessClipboard:Z

.field public javascriptEnabled:Z

.field public lazyLoadEnabled:Z

.field public loadsImagesAutomatically:Z

.field public localStorageEnabled:Z

.field public longPressLinkSelectText:Z

.field public lowPriorityIframesThreshold:I

.field public mainFrameResizesAreOrientationChanges:Z

.field public mathFontFamilyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/mojo_base/mojom/String16;",
            ">;"
        }
    .end annotation
.end field

.field public mediaControlsEnabled:Z

.field public minimumFontSize:I

.field public minimumLogicalFontSize:I

.field public modalContextMenu:Z

.field public networkCountryIso:Ljava/lang/String;

.field public networkQualityEstimatorWebHoldback:I

.field public nightDimGain:I

.field public nightModeEnabled:Z

.field public numberOfCpuCores:I

.field public outputDeviceUpdateAbilityType:I

.field public passwordEchoEnabled:Z

.field public paymentRequestEnabled:Z

.field public pepper3dEnabled:Z

.field public pictureInPictureEnabled:Z

.field public pluginsEnabled:Z

.field public pointerEventsMaxTouchPoints:I

.field public preferredColorScheme:I

.field public preferredContrast:I

.field public preferredRootScrollbarColorScheme:I

.field public prefersDefaultScrollbarStyles:Z

.field public prefersReducedMotion:Z

.field public prefersReducedTransparency:Z

.field public presentationReceiver:Z

.field public primaryHoverType:I

.field public primaryPointerType:I

.field public privilegedWebglExtensionsEnabled:Z

.field public recordWholeDocument:Z

.field public remoteFontsEnabled:Z

.field public rendererWideNamedFrameLookup:Z

.field public reportScreenSizeInPhysicalPixelsQuirk:Z

.field public requireTransientActivationAndUserConfirmationForSubappsApi:Z

.field public requireTransientActivationForGetDisplayMedia:Z

.field public requireTransientActivationForShowFileOrDirectoryPicker:Z

.field public reuseGlobalForUnownedMainFrame:Z

.field public rootScrollbarThemeColor:Lorg/chromium/skia/mojom/SkColor;

.field public sansSerifFontFamilyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/mojo_base/mojom/String16;",
            ">;"
        }
    .end annotation
.end field

.field public screenAntiFingerprintingMode:I

.field public scrollTopLeftInteropEnabled:Z

.field public serifFontFamilyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/mojo_base/mojom/String16;",
            ">;"
        }
    .end annotation
.end field

.field public shouldClearDocumentBackground:Z

.field public shrinksStandaloneImagesToFit:Z

.field public shrinksViewportContentsToFit:Z

.field public smartInsertDeleteEnabled:Z

.field public smoothScrollForFindEnabled:Z

.field public spatialNavigationEnabled:Z

.field public spellcheckEnabledByDefault:Z

.field public standardFontFamilyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/mojo_base/mojom/String16;",
            ">;"
        }
    .end annotation
.end field

.field public strictMimeTypeCheckForWorkerScriptsEnabled:Z

.field public strictMixedContentChecking:Z

.field public strictPowerfulFeatureRestrictions:Z

.field public strictReferrerStrippingEnabled:Z

.field public strictlyBlockBlockableMixedContent:Z

.field public stylusHandwritingEnabled:Z

.field public supportDeprecatedTargetDensityDpi:Z

.field public supportsMultipleWindows:Z

.field public syncXhrInDocumentsEnabled:Z

.field public systemColors:Lorg/chromium/blink/mojom/SystemColors;

.field public systemFontFamily:Ljava/lang/String;

.field public tabsToLinks:Z

.field public targetBlankImpliesNoOpenerEnabledWillBeRemoved:Z

.field public textAreasAreResizable:Z

.field public textAutosizingEnabled:Z

.field public textSizeContrastFactor:I

.field public textTrackBackgroundColor:Ljava/lang/String;

.field public textTrackFontFamily:Ljava/lang/String;

.field public textTrackFontStyle:Ljava/lang/String;

.field public textTrackFontVariant:Ljava/lang/String;

.field public textTrackMarginPercentage:F

.field public textTrackTextColor:Ljava/lang/String;

.field public textTrackTextShadow:Ljava/lang/String;

.field public textTrackTextSize:Ljava/lang/String;

.field public textTrackWindowColor:Ljava/lang/String;

.field public textTrackWindowRadius:Ljava/lang/String;

.field public textTracksEnabled:Z

.field public touchDragDropEnabled:Z

.field public touchEventFeatureDetectionEnabled:Z

.field public translateServiceAvailable:Z

.field public useNightDim:Z

.field public useWideViewport:Z

.field public userGestureRequiredForPresentation:Z

.field public v8CacheOptions:I

.field public vaxContrastFactor:I

.field public videoFullscreenOrientationLockEnabled:Z

.field public videoRotateToFullscreenEnabled:Z

.field public viewportEnabled:Z

.field public viewportMetaEnabled:Z

.field public viewportMetaMergeContentQuirk:Z

.field public viewportMetaNonUserScalableQuirk:Z

.field public viewportMetaZeroValuesQuirk:Z

.field public viewportStyle:I

.field public webAppScope:Lorg/chromium/url/mojom/Url;

.field public webAudioAntiFingerprintMode:I

.field public webSecurityEnabled:Z

.field public webgl1Enabled:Z

.field public webgl2Enabled:Z

.field public webglErrorsToConsoleEnabled:Z

.field public webxrImmersiveArAllowed:Z

.field public wideViewportQuirk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x170

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/WebPreferences;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/WebPreferences;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x170

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/WebPreferences;->strictMimeTypeCheckForWorkerScriptsEnabled:Z

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/WebPreferences;->modalContextMenu:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/WebPreferences;->dynamicSafeAreaInsetsEnabled:Z

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/WebPreferences;->paymentRequestEnabled:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/WebPreferences;
    .locals 11

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/WebPreferences;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/WebPreferences;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/WebPreferences;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v3, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v6, [Ljava/lang/String;

    move v8, v2

    :goto_0
    iget v9, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_1

    const/16 v9, 0x8

    invoke-static {v8, v9, v0, v4, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_15

    :cond_1
    const/16 v4, 0x10

    invoke-virtual {v3, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v8, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Lorg/chromium/mojo_base/mojom/String16;

    move v9, v2

    :goto_1
    iget v10, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_2

    const/16 v10, 0x8

    invoke-static {v9, v10, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v10

    invoke-static {v10}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lorg/chromium/blink/mojom/WebPreferences;->standardFontFamilyMap:Ljava/util/Map;

    move v3, v2

    :goto_2
    if-ge v3, v6, :cond_3

    iget-object v5, v1, Lorg/chromium/blink/mojom/WebPreferences;->standardFontFamilyMap:Ljava/util/Map;

    aget-object v9, v7, v3

    aget-object v10, v8, v3

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v3, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v7, [Ljava/lang/String;

    move v9, v2

    :goto_3
    iget v10, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_4

    const/16 v10, 0x8

    invoke-static {v9, v10, v0, v5, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v3, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/mojo_base/mojom/String16;

    move v9, v2

    :goto_4
    iget v10, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_5

    const/16 v10, 0x8

    invoke-static {v9, v10, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v10

    invoke-static {v10}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v10

    aput-object v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lorg/chromium/blink/mojom/WebPreferences;->fixedFontFamilyMap:Ljava/util/Map;

    move v3, v2

    :goto_5
    if-ge v3, v7, :cond_6

    iget-object v5, v1, Lorg/chromium/blink/mojom/WebPreferences;->fixedFontFamilyMap:Ljava/util/Map;

    aget-object v9, v8, v3

    aget-object v10, v6, v3

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    const/16 v3, 0x18

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v3, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v7, [Ljava/lang/String;

    move v9, v2

    :goto_6
    iget v10, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_7

    const/16 v10, 0x8

    invoke-static {v9, v10, v0, v5, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v3, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/mojo_base/mojom/String16;

    move v9, v2

    :goto_7
    iget v10, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_8

    const/16 v10, 0x8

    invoke-static {v9, v10, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v10

    invoke-static {v10}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v10

    aput-object v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_8
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lorg/chromium/blink/mojom/WebPreferences;->serifFontFamilyMap:Ljava/util/Map;

    move v3, v2

    :goto_8
    if-ge v3, v7, :cond_9

    iget-object v5, v1, Lorg/chromium/blink/mojom/WebPreferences;->serifFontFamilyMap:Ljava/util/Map;

    aget-object v9, v8, v3

    aget-object v10, v6, v3

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_9
    const/16 v3, 0x20

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v3, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v7, [Ljava/lang/String;

    move v9, v2

    :goto_9
    iget v10, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_a

    const/16 v10, 0x8

    invoke-static {v9, v10, v0, v5, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_a
    invoke-virtual {v3, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/mojo_base/mojom/String16;

    move v9, v2

    :goto_a
    iget v10, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_b

    const/16 v10, 0x8

    invoke-static {v9, v10, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v10

    invoke-static {v10}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v10

    aput-object v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_b
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lorg/chromium/blink/mojom/WebPreferences;->sansSerifFontFamilyMap:Ljava/util/Map;

    move v3, v2

    :goto_b
    if-ge v3, v7, :cond_c

    iget-object v5, v1, Lorg/chromium/blink/mojom/WebPreferences;->sansSerifFontFamilyMap:Ljava/util/Map;

    aget-object v9, v8, v3

    aget-object v10, v6, v3

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_c
    const/16 v3, 0x28

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v3, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v7, [Ljava/lang/String;

    move v9, v2

    :goto_c
    iget v10, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_d

    const/16 v10, 0x8

    invoke-static {v9, v10, v0, v5, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_d
    invoke-virtual {v3, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/mojo_base/mojom/String16;

    move v9, v2

    :goto_d
    iget v10, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_e

    const/16 v10, 0x8

    invoke-static {v9, v10, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v10

    invoke-static {v10}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v10

    aput-object v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_e
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lorg/chromium/blink/mojom/WebPreferences;->cursiveFontFamilyMap:Ljava/util/Map;

    move v3, v2

    :goto_e
    if-ge v3, v7, :cond_f

    iget-object v5, v1, Lorg/chromium/blink/mojom/WebPreferences;->cursiveFontFamilyMap:Ljava/util/Map;

    aget-object v9, v8, v3

    aget-object v10, v6, v3

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_f
    const/16 v3, 0x30

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v3, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v7, [Ljava/lang/String;

    move v9, v2

    :goto_f
    iget v10, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_10

    const/16 v10, 0x8

    invoke-static {v9, v10, v0, v5, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_10
    invoke-virtual {v3, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/mojo_base/mojom/String16;

    move v9, v2

    :goto_10
    iget v10, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_11

    const/16 v10, 0x8

    invoke-static {v9, v10, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v10

    invoke-static {v10}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v10

    aput-object v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_11
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lorg/chromium/blink/mojom/WebPreferences;->fantasyFontFamilyMap:Ljava/util/Map;

    move v3, v2

    :goto_11
    if-ge v3, v7, :cond_12

    iget-object v5, v1, Lorg/chromium/blink/mojom/WebPreferences;->fantasyFontFamilyMap:Ljava/util/Map;

    aget-object v9, v8, v3

    aget-object v10, v6, v3

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_12
    const/16 v3, 0x38

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v3, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v7, [Ljava/lang/String;

    move v9, v2

    :goto_12
    iget v10, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_13

    const/16 v10, 0x8

    invoke-static {v9, v10, v0, v5, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_13
    invoke-virtual {v3, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/mojo_base/mojom/String16;

    move v6, v2

    :goto_13
    iget v9, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v9, :cond_14

    const/16 v9, 0x8

    invoke-static {v6, v9, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    invoke-static {v9}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v9

    aput-object v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->mathFontFamilyMap:Ljava/util/Map;

    move v0, v2

    :goto_14
    if-ge v0, v7, :cond_15

    iget-object v3, v1, Lorg/chromium/blink/mojom/WebPreferences;->mathFontFamilyMap:Ljava/util/Map;

    aget-object v4, v8, v0

    aget-object v6, v5, v0

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_15
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->defaultFontSize:I

    const/16 v0, 0x44

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->defaultFixedFontSize:I

    const/16 v0, 0x48

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->minimumFontSize:I

    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->minimumLogicalFontSize:I

    const/16 v0, 0x50

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->defaultEncoding:Ljava/lang/String;

    const/16 v0, 0x58

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->systemFontFamily:Ljava/lang/String;

    const/16 v0, 0x60

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/blink/mojom/WebPreferences;->contextMenuOnMouseUp:Z

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/blink/mojom/WebPreferences;->javascriptEnabled:Z

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/blink/mojom/WebPreferences;->webSecurityEnabled:Z

    const/4 v5, 0x3

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v1, Lorg/chromium/blink/mojom/WebPreferences;->loadsImagesAutomatically:Z

    const/4 v6, 0x4

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v1, Lorg/chromium/blink/mojom/WebPreferences;->imagesEnabled:Z

    const/4 v7, 0x5

    invoke-virtual {p0, v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v8

    iput-boolean v8, v1, Lorg/chromium/blink/mojom/WebPreferences;->pluginsEnabled:Z

    const/4 v8, 0x6

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v9

    iput-boolean v9, v1, Lorg/chromium/blink/mojom/WebPreferences;->domPasteEnabled:Z

    const/4 v9, 0x7

    invoke-virtual {p0, v0, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->shrinksStandaloneImagesToFit:Z

    const/16 v0, 0x61

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->textAreasAreResizable:Z

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->allowScriptsToCloseWindows:Z

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->remoteFontsEnabled:Z

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->javascriptCanAccessClipboard:Z

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->dnsPrefetchingEnabled:Z

    invoke-virtual {p0, v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->dataSaverEnabled:Z

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->localStorageEnabled:Z

    invoke-virtual {p0, v0, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->databasesEnabled:Z

    const/16 v0, 0x62

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->tabsToLinks:Z

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->disableIpcFloodingProtection:Z

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->hyperlinkAuditingEnabled:Z

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->allowUniversalAccessFromFileUrls:Z

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->allowFileAccessFromFileUrls:Z

    invoke-virtual {p0, v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->webgl1Enabled:Z

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->webgl2Enabled:Z

    invoke-virtual {p0, v0, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->pepper3dEnabled:Z

    const/16 v0, 0x63

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->privilegedWebglExtensionsEnabled:Z

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->webglErrorsToConsoleEnabled:Z

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->hideScrollbars:Z

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->prefersDefaultScrollbarStyles:Z

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->accelerated2dCanvasEnabled:Z

    invoke-virtual {p0, v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->canvas2dLayersEnabled:Z

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->antialiased2dCanvasDisabled:Z

    invoke-virtual {p0, v0, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->antialiasedClips2dCanvasEnabled:Z

    const/16 v0, 0x64

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->acceleratedFiltersEnabled:Z

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->deferredFiltersEnabled:Z

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->containerCullingEnabled:Z

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->allowRunningInsecureContent:Z

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->disableReadingFromCanvas:Z

    invoke-virtual {p0, v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->strictMixedContentChecking:Z

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->strictPowerfulFeatureRestrictions:Z

    invoke-virtual {p0, v0, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->allowGeolocationOnInsecureOrigins:Z

    const/16 v0, 0x65

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->strictlyBlockBlockableMixedContent:Z

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->blockMixedPluginContent:Z

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->passwordEchoEnabled:Z

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->shouldClearDocumentBackground:Z

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->enableScrollAnimator:Z

    invoke-virtual {p0, v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->prefersReducedMotion:Z

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->prefersReducedTransparency:Z

    invoke-virtual {p0, v0, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->invertedColors:Z

    const/16 v0, 0x66

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->touchEventFeatureDetectionEnabled:Z

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->dontSendKeyEventsToJavascript:Z

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->barrelButtonForDragEnabled:Z

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->syncXhrInDocumentsEnabled:Z

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->targetBlankImpliesNoOpenerEnabledWillBeRemoved:Z

    invoke-virtual {p0, v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->allowNonEmptyNavigatorPlugins:Z

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->supportsMultipleWindows:Z

    invoke-virtual {p0, v0, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->viewportEnabled:Z

    const/16 v0, 0x67

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->viewportMetaEnabled:Z

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->autoZoomFocusedEditableToLegibleScale:Z

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->useNightDim:Z

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->shrinksViewportContentsToFit:Z

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->smoothScrollForFindEnabled:Z

    invoke-virtual {p0, v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->mainFrameResizesAreOrientationChanges:Z

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->initializeAtMinimumPageScale:Z

    invoke-virtual {p0, v0, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->smartInsertDeleteEnabled:Z

    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->pointerEventsMaxTouchPoints:I

    const/16 v0, 0x6c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->availablePointerTypes:I

    const/16 v0, 0x70

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->primaryPointerType:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/PointerType;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->primaryPointerType:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/PointerType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->primaryPointerType:I

    const/16 v0, 0x74

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->outputDeviceUpdateAbilityType:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/OutputDeviceUpdateAbilityType;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->outputDeviceUpdateAbilityType:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/OutputDeviceUpdateAbilityType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->outputDeviceUpdateAbilityType:I

    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->availableHoverTypes:I

    const/16 v0, 0x7c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->primaryHoverType:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/HoverType;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->primaryHoverType:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/HoverType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->primaryHoverType:I

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->numberOfCpuCores:I

    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->editingBehavior:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/EditingBehavior;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->editingBehavior:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/EditingBehavior;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->editingBehavior:I

    const/16 v0, 0x88

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->nightDimGain:I

    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->viewportStyle:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/ViewportStyle;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->viewportStyle:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/ViewportStyle;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->viewportStyle:I

    const/16 v0, 0x90

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->spatialNavigationEnabled:Z

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->recordWholeDocument:Z

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->stylusHandwritingEnabled:Z

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->cookieEnabled:Z

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->acceleratedVideoDecodeEnabled:Z

    invoke-virtual {p0, v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->autoplayAllowed:Z

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->backgroundPlayEnabled:Z

    invoke-virtual {p0, v0, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->blockAutoDownloadEnabled:Z

    const/16 v0, 0x91

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->blockFixedFrameEnabled:Z

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->blockWebFingerprintingEnabled:Z

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->blockPluginFingerprintingEnabled:Z

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->baitElementOverrideEnabled:Z

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->baitJavascriptDetectionEnabled:Z

    invoke-virtual {p0, v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->fullAntiAdblockAvoidanceEnabled:Z

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->compactModeEnabled:Z

    invoke-virtual {p0, v0, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->userGestureRequiredForPresentation:Z

    const/16 v0, 0x92

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->textTracksEnabled:Z

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->immersiveModeEnabled:Z

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->doubleTapToZoomEnabled:Z

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->fullscreenSupported:Z

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->textAutosizingEnabled:Z

    invoke-virtual {p0, v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->forceEnableZoom:Z

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->supportDeprecatedTargetDensityDpi:Z

    invoke-virtual {p0, v0, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->wideViewportQuirk:Z

    const/16 v0, 0x93

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->useWideViewport:Z

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->forceZeroLayoutHeight:Z

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->viewportMetaMergeContentQuirk:Z

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->viewportMetaNonUserScalableQuirk:Z

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->viewportMetaZeroValuesQuirk:Z

    invoke-virtual {p0, v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->clobberUserAgentInitialScaleQuirk:Z

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/WebPreferences;->ignoreMainFrameOverflowHiddenQuirk:Z

    invoke-virtual {p0, v0, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->reportScreenSizeInPhysicalPixelsQuirk:Z

    const/16 v0, 0x94

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->v8CacheOptions:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/V8CacheOptions;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->v8CacheOptions:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/V8CacheOptions;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->v8CacheOptions:I

    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->animationPolicy:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/ImageAnimationPolicy;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->animationPolicy:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/ImageAnimationPolicy;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->animationPolicy:I

    const/16 v0, 0x9c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->textTrackMarginPercentage:F

    const/16 v0, 0xa0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->blockFixedFrameAllowedStrings:Ljava/lang/String;

    const/16 v0, 0xa8

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->blockWebFingerprintingAllowedDomains:Ljava/lang/String;

    const/16 v0, 0xb0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->networkCountryIso:Ljava/lang/String;

    const/16 v0, 0xb8

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->textTrackBackgroundColor:Ljava/lang/String;

    const/16 v0, 0xc0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->textTrackTextColor:Ljava/lang/String;

    const/16 v0, 0xc8

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->textTrackTextSize:Ljava/lang/String;

    const/16 v0, 0xd0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->textTrackTextShadow:Ljava/lang/String;

    const/16 v0, 0xd8

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->textTrackFontFamily:Ljava/lang/String;

    const/16 v0, 0xe0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->textTrackFontStyle:Ljava/lang/String;

    const/16 v0, 0xe8

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->textTrackFontVariant:Ljava/lang/String;

    const/16 v0, 0xf0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->textTrackWindowColor:Ljava/lang/String;

    const/16 v0, 0xf8

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->textTrackWindowRadius:Ljava/lang/String;

    const/16 v0, 0x100

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->webAppScope:Lorg/chromium/url/mojom/Url;

    const/16 v0, 0x108

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->fontScaleFactor:F

    const/16 v0, 0x10c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->fontWeightAdjustment:I

    const/16 v0, 0x110

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->textSizeContrastFactor:I

    const/16 v0, 0x114

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->deviceScaleAdjustment:F

    const/16 v0, 0x118

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->defaultVideoPosterUrl:Lorg/chromium/url/mojom/Url;

    const/16 v0, 0x120

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->reuseGlobalForUnownedMainFrame:Z

    const/16 v0, 0x120

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->contentBlockerEnabled:Z

    const/16 v0, 0x120

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->contentBlockerStatisticsEnabled:Z

    const/16 v0, 0x120

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->defaultContentBlockerEnabled:Z

    const/16 v0, 0x120

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->spellcheckEnabledByDefault:Z

    const/16 v0, 0x120

    invoke-virtual {p0, v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->videoFullscreenOrientationLockEnabled:Z

    const/16 v0, 0x120

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->videoRotateToFullscreenEnabled:Z

    const/16 v0, 0x120

    invoke-virtual {p0, v0, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->embeddedMediaExperienceEnabled:Z

    const/16 v0, 0x121

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->cssHexAlphaColorEnabled:Z

    const/16 v0, 0x121

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->scrollTopLeftInteropEnabled:Z

    const/16 v0, 0x121

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->disableAcceleratedSmallCanvases:Z

    const/16 v0, 0x121

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->longPressLinkSelectText:Z

    const/16 v0, 0x121

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->nightModeEnabled:Z

    const/16 v0, 0x121

    invoke-virtual {p0, v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->highContrastModeEnabled:Z

    const/16 v0, 0x121

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->disableWebauthn:Z

    const/16 v0, 0x121

    invoke-virtual {p0, v0, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->forceDarkModeEnabled:Z

    const/16 v0, 0x122

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->hideDownloadUi:Z

    const/16 v0, 0x122

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->presentationReceiver:Z

    const/16 v0, 0x122

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->mediaControlsEnabled:Z

    const/16 v0, 0x122

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->doNotUpdateSelectionOnMutatingSelectionRange:Z

    const/16 v0, 0x122

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->requireTransientActivationForGetDisplayMedia:Z

    const/16 v0, 0x122

    invoke-virtual {p0, v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->requireTransientActivationForShowFileOrDirectoryPicker:Z

    const/16 v0, 0x122

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->requireTransientActivationAndUserConfirmationForSubappsApi:Z

    const/16 v0, 0x122

    invoke-virtual {p0, v0, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->inForcedColors:Z

    const/16 v0, 0x123

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->isForcedColorsDisabled:Z

    const/16 v0, 0x123

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->pictureInPictureEnabled:Z

    const/16 v0, 0x123

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->translateServiceAvailable:Z

    const/16 v0, 0x123

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->lazyLoadEnabled:Z

    const/16 v0, 0x123

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->allowMixedContentUpgrades:Z

    const/16 v0, 0x123

    invoke-virtual {p0, v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->alwaysShowFocus:Z

    const/16 v0, 0x123

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->touchDragDropEnabled:Z

    const/16 v0, 0x123

    invoke-virtual {p0, v0, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->webxrImmersiveArAllowed:Z

    const/16 v0, 0x124

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->vaxContrastFactor:I

    const/16 v0, 0x128

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/SystemColors;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/SystemColors;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->systemColors:Lorg/chromium/blink/mojom/SystemColors;

    const/16 v0, 0x130

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->defaultMinimumPageScaleFactor:F

    const/16 v0, 0x134

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->defaultMaximumPageScaleFactor:F

    const/16 v0, 0x138

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->forceDarkBehavior:I

    const/16 v0, 0x13c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->autoplayPolicy:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/AutoplayPolicy;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->autoplayPolicy:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/AutoplayPolicy;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->autoplayPolicy:I

    const/16 v0, 0x140

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/skia/mojom/SkColor;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/skia/mojom/SkColor;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->rootScrollbarThemeColor:Lorg/chromium/skia/mojom/SkColor;

    const/16 v0, 0x148

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->preferredRootScrollbarColorScheme:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/PreferredColorScheme;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->preferredRootScrollbarColorScheme:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/PreferredColorScheme;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->preferredRootScrollbarColorScheme:I

    const/16 v0, 0x14c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->preferredColorScheme:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/PreferredColorScheme;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->preferredColorScheme:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/PreferredColorScheme;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->preferredColorScheme:I

    const/16 v0, 0x150

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->preferredContrast:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/PreferredContrast;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->preferredContrast:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/PreferredContrast;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->preferredContrast:I

    const/16 v0, 0x154

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->lowPriorityIframesThreshold:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/EffectiveConnectionType;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->lowPriorityIframesThreshold:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/EffectiveConnectionType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->lowPriorityIframesThreshold:I

    const/16 v0, 0x158

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->networkQualityEstimatorWebHoldback:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/EffectiveConnectionType;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->networkQualityEstimatorWebHoldback:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/EffectiveConnectionType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->networkQualityEstimatorWebHoldback:I

    const/16 v0, 0x15c

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->rendererWideNamedFrameLookup:Z

    const/16 v0, 0x15c

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->antiTrackingEnabled:Z

    const/16 v0, 0x15c

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->cnameCloakingEnabled:Z

    const/16 v0, 0x15c

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->strictReferrerStrippingEnabled:Z

    const/16 v0, 0x15c

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->strictMimeTypeCheckForWorkerScriptsEnabled:Z

    const/16 v0, 0x15c

    invoke-virtual {p0, v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->modalContextMenu:Z

    const/16 v0, 0x15c

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->dynamicSafeAreaInsetsEnabled:Z

    const/16 v0, 0x15c

    invoke-virtual {p0, v0, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->paymentRequestEnabled:Z

    const/16 v0, 0x160

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->automaticStorageAccessState:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/AutomaticStorageAccessState;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->automaticStorageAccessState:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/AutomaticStorageAccessState;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->automaticStorageAccessState:I

    const/16 v0, 0x164

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->screenAntiFingerprintingMode:I

    const/16 v0, 0x168

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->webAudioAntiFingerprintMode:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/WebAudioAntiFingerprintMode;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->webAudioAntiFingerprintMode:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/WebAudioAntiFingerprintMode;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebPreferences;->webAudioAntiFingerprintMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_15
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lorg/chromium/blink/mojom/WebPreferences;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->standardFontFamilyMap:Ljava/util/Map;

    const/16 v3, 0x10

    const/4 v4, -0x1

    const/16 v12, 0x8

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v1, v12, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v1, v12}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v5, v0, Lorg/chromium/blink/mojom/WebPreferences;->standardFontFamilyMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v15

    new-array v11, v15, [Ljava/lang/String;

    new-array v10, v15, [Lorg/chromium/mojo_base/mojom/String16;

    iget-object v5, v0, Lorg/chromium/blink/mojom/WebPreferences;->standardFontFamilyMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v14

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v11, v6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/chromium/mojo_base/mojom/String16;

    aput-object v7, v10, v6

    add-int/2addr v6, v13

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v15, v12, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v9, v14

    :goto_1
    if-ge v9, v15, :cond_2

    aget-object v8, v11, v9

    mul-int/lit8 v5, v9, 0x8

    const/16 v17, 0x1

    move v6, v12

    move-object/from16 v7, v16

    move/from16 v18, v9

    move v9, v14

    move-object/from16 v19, v10

    move/from16 v10, v18

    move-object/from16 v18, v11

    move/from16 v11, v17

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v9

    move-object/from16 v11, v18

    move-object/from16 v10, v19

    goto :goto_1

    :cond_2
    move-object/from16 v19, v10

    invoke-virtual {v2, v15, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v10, v14

    :goto_2
    if-ge v10, v15, :cond_3

    aget-object v8, v19, v10

    mul-int/lit8 v5, v10, 0x8

    const/4 v11, 0x1

    move v6, v12

    move-object v7, v2

    move v9, v14

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->c(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/mojo_base/mojom/String16;ZII)I

    move-result v10

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->fixedFontFamilyMap:Ljava/util/Map;

    if-nez v2, :cond_4

    invoke-virtual {v1, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_7

    :cond_4
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v5, v0, Lorg/chromium/blink/mojom/WebPreferences;->fixedFontFamilyMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v15

    new-array v11, v15, [Ljava/lang/String;

    new-array v10, v15, [Lorg/chromium/mojo_base/mojom/String16;

    iget-object v5, v0, Lorg/chromium/blink/mojom/WebPreferences;->fixedFontFamilyMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v14

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v11, v6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/chromium/mojo_base/mojom/String16;

    aput-object v7, v10, v6

    add-int/2addr v6, v13

    goto :goto_4

    :cond_5
    invoke-virtual {v2, v15, v12, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v9, v14

    :goto_5
    if-ge v9, v15, :cond_6

    aget-object v8, v11, v9

    mul-int/lit8 v5, v9, 0x8

    const/16 v17, 0x1

    move v6, v12

    move-object/from16 v7, v16

    move/from16 v18, v9

    move v9, v14

    move-object/from16 v19, v10

    move/from16 v10, v18

    move-object/from16 v18, v11

    move/from16 v11, v17

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v9

    move-object/from16 v11, v18

    move-object/from16 v10, v19

    goto :goto_5

    :cond_6
    move-object/from16 v19, v10

    invoke-virtual {v2, v15, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v10, v14

    :goto_6
    if-ge v10, v15, :cond_7

    aget-object v8, v19, v10

    mul-int/lit8 v5, v10, 0x8

    const/4 v11, 0x1

    move v6, v12

    move-object v7, v2

    move v9, v14

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->c(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/mojo_base/mojom/String16;ZII)I

    move-result v10

    goto :goto_6

    :cond_7
    :goto_7
    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->serifFontFamilyMap:Ljava/util/Map;

    if-nez v2, :cond_8

    const/16 v2, 0x18

    invoke-virtual {v1, v2, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_b

    :cond_8
    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v5, v0, Lorg/chromium/blink/mojom/WebPreferences;->serifFontFamilyMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v15

    new-array v11, v15, [Ljava/lang/String;

    new-array v10, v15, [Lorg/chromium/mojo_base/mojom/String16;

    iget-object v5, v0, Lorg/chromium/blink/mojom/WebPreferences;->serifFontFamilyMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v14

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v11, v6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/chromium/mojo_base/mojom/String16;

    aput-object v7, v10, v6

    add-int/2addr v6, v13

    goto :goto_8

    :cond_9
    invoke-virtual {v2, v15, v12, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v9, v14

    :goto_9
    if-ge v9, v15, :cond_a

    aget-object v8, v11, v9

    mul-int/lit8 v5, v9, 0x8

    const/16 v17, 0x1

    move v6, v12

    move-object/from16 v7, v16

    move/from16 v18, v9

    move v9, v14

    move-object/from16 v19, v10

    move/from16 v10, v18

    move-object/from16 v18, v11

    move/from16 v11, v17

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v9

    move-object/from16 v11, v18

    move-object/from16 v10, v19

    goto :goto_9

    :cond_a
    move-object/from16 v19, v10

    invoke-virtual {v2, v15, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v10, v14

    :goto_a
    if-ge v10, v15, :cond_b

    aget-object v8, v19, v10

    mul-int/lit8 v5, v10, 0x8

    const/4 v11, 0x1

    move v6, v12

    move-object v7, v2

    move v9, v14

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->c(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/mojo_base/mojom/String16;ZII)I

    move-result v10

    goto :goto_a

    :cond_b
    :goto_b
    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->sansSerifFontFamilyMap:Ljava/util/Map;

    if-nez v2, :cond_c

    const/16 v2, 0x20

    invoke-virtual {v1, v2, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_f

    :cond_c
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v5, v0, Lorg/chromium/blink/mojom/WebPreferences;->sansSerifFontFamilyMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v15

    new-array v11, v15, [Ljava/lang/String;

    new-array v10, v15, [Lorg/chromium/mojo_base/mojom/String16;

    iget-object v5, v0, Lorg/chromium/blink/mojom/WebPreferences;->sansSerifFontFamilyMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v14

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v11, v6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/chromium/mojo_base/mojom/String16;

    aput-object v7, v10, v6

    add-int/2addr v6, v13

    goto :goto_c

    :cond_d
    invoke-virtual {v2, v15, v12, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v9, v14

    :goto_d
    if-ge v9, v15, :cond_e

    aget-object v8, v11, v9

    mul-int/lit8 v5, v9, 0x8

    const/16 v17, 0x1

    move v6, v12

    move-object/from16 v7, v16

    move/from16 v18, v9

    move v9, v14

    move-object/from16 v19, v10

    move/from16 v10, v18

    move-object/from16 v18, v11

    move/from16 v11, v17

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v9

    move-object/from16 v11, v18

    move-object/from16 v10, v19

    goto :goto_d

    :cond_e
    move-object/from16 v19, v10

    invoke-virtual {v2, v15, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v10, v14

    :goto_e
    if-ge v10, v15, :cond_f

    aget-object v8, v19, v10

    mul-int/lit8 v5, v10, 0x8

    const/4 v11, 0x1

    move v6, v12

    move-object v7, v2

    move v9, v14

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->c(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/mojo_base/mojom/String16;ZII)I

    move-result v10

    goto :goto_e

    :cond_f
    :goto_f
    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->cursiveFontFamilyMap:Ljava/util/Map;

    if-nez v2, :cond_10

    const/16 v2, 0x28

    invoke-virtual {v1, v2, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_13

    :cond_10
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v5, v0, Lorg/chromium/blink/mojom/WebPreferences;->cursiveFontFamilyMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v15

    new-array v11, v15, [Ljava/lang/String;

    new-array v10, v15, [Lorg/chromium/mojo_base/mojom/String16;

    iget-object v5, v0, Lorg/chromium/blink/mojom/WebPreferences;->cursiveFontFamilyMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v14

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v11, v6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/chromium/mojo_base/mojom/String16;

    aput-object v7, v10, v6

    add-int/2addr v6, v13

    goto :goto_10

    :cond_11
    invoke-virtual {v2, v15, v12, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v9, v14

    :goto_11
    if-ge v9, v15, :cond_12

    aget-object v8, v11, v9

    mul-int/lit8 v5, v9, 0x8

    const/16 v17, 0x1

    move v6, v12

    move-object/from16 v7, v16

    move/from16 v18, v9

    move v9, v14

    move-object/from16 v19, v10

    move/from16 v10, v18

    move-object/from16 v18, v11

    move/from16 v11, v17

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v9

    move-object/from16 v11, v18

    move-object/from16 v10, v19

    goto :goto_11

    :cond_12
    move-object/from16 v19, v10

    invoke-virtual {v2, v15, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v10, v14

    :goto_12
    if-ge v10, v15, :cond_13

    aget-object v8, v19, v10

    mul-int/lit8 v5, v10, 0x8

    const/4 v11, 0x1

    move v6, v12

    move-object v7, v2

    move v9, v14

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->c(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/mojo_base/mojom/String16;ZII)I

    move-result v10

    goto :goto_12

    :cond_13
    :goto_13
    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->fantasyFontFamilyMap:Ljava/util/Map;

    if-nez v2, :cond_14

    const/16 v2, 0x30

    invoke-virtual {v1, v2, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_17

    :cond_14
    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v5, v0, Lorg/chromium/blink/mojom/WebPreferences;->fantasyFontFamilyMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v15

    new-array v11, v15, [Ljava/lang/String;

    new-array v10, v15, [Lorg/chromium/mojo_base/mojom/String16;

    iget-object v5, v0, Lorg/chromium/blink/mojom/WebPreferences;->fantasyFontFamilyMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v14

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v11, v6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/chromium/mojo_base/mojom/String16;

    aput-object v7, v10, v6

    add-int/2addr v6, v13

    goto :goto_14

    :cond_15
    invoke-virtual {v2, v15, v12, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v9, v14

    :goto_15
    if-ge v9, v15, :cond_16

    aget-object v8, v11, v9

    mul-int/lit8 v5, v9, 0x8

    const/16 v17, 0x1

    move v6, v12

    move-object/from16 v7, v16

    move/from16 v18, v9

    move v9, v14

    move-object/from16 v19, v10

    move/from16 v10, v18

    move-object/from16 v18, v11

    move/from16 v11, v17

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v9

    move-object/from16 v11, v18

    move-object/from16 v10, v19

    goto :goto_15

    :cond_16
    move-object/from16 v19, v10

    invoke-virtual {v2, v15, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v10, v14

    :goto_16
    if-ge v10, v15, :cond_17

    aget-object v8, v19, v10

    mul-int/lit8 v5, v10, 0x8

    const/4 v11, 0x1

    move v6, v12

    move-object v7, v2

    move v9, v14

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->c(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/mojo_base/mojom/String16;ZII)I

    move-result v10

    goto :goto_16

    :cond_17
    :goto_17
    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->mathFontFamilyMap:Ljava/util/Map;

    if-nez v2, :cond_18

    const/16 v2, 0x38

    invoke-virtual {v1, v2, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_1b

    :cond_18
    const/16 v2, 0x38

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v5, v0, Lorg/chromium/blink/mojom/WebPreferences;->mathFontFamilyMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v15

    new-array v11, v15, [Ljava/lang/String;

    new-array v10, v15, [Lorg/chromium/mojo_base/mojom/String16;

    iget-object v5, v0, Lorg/chromium/blink/mojom/WebPreferences;->mathFontFamilyMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v14

    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v11, v6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/chromium/mojo_base/mojom/String16;

    aput-object v7, v10, v6

    add-int/2addr v6, v13

    goto :goto_18

    :cond_19
    invoke-virtual {v2, v15, v12, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v9, v14

    :goto_19
    if-ge v9, v15, :cond_1a

    aget-object v8, v11, v9

    mul-int/lit8 v5, v9, 0x8

    const/16 v17, 0x1

    move v6, v12

    move-object/from16 v7, v16

    move/from16 v18, v9

    move v9, v14

    move-object/from16 v19, v10

    move/from16 v10, v18

    move-object/from16 v18, v11

    move/from16 v11, v17

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v9

    move-object/from16 v11, v18

    move-object/from16 v10, v19

    goto :goto_19

    :cond_1a
    move-object/from16 v19, v10

    invoke-virtual {v2, v15, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v10, v14

    :goto_1a
    if-ge v10, v15, :cond_1b

    aget-object v8, v19, v10

    mul-int/lit8 v5, v10, 0x8

    const/4 v11, 0x1

    move v6, v12

    move-object v7, v2

    move v9, v14

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->c(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/mojo_base/mojom/String16;ZII)I

    move-result v10

    goto :goto_1a

    :cond_1b
    :goto_1b
    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->defaultFontSize:I

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->defaultFixedFontSize:I

    const/16 v3, 0x44

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->minimumFontSize:I

    const/16 v3, 0x48

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->minimumLogicalFontSize:I

    const/16 v3, 0x4c

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->defaultEncoding:Ljava/lang/String;

    const/16 v3, 0x50

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->systemFontFamily:Ljava/lang/String;

    const/16 v3, 0x58

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->contextMenuOnMouseUp:Z

    const/16 v3, 0x60

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->javascriptEnabled:Z

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->webSecurityEnabled:Z

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->loadsImagesAutomatically:Z

    const/4 v5, 0x3

    invoke-virtual {v1, v2, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->imagesEnabled:Z

    const/4 v6, 0x4

    invoke-virtual {v1, v2, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->pluginsEnabled:Z

    const/4 v7, 0x5

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->domPasteEnabled:Z

    const/4 v8, 0x6

    invoke-virtual {v1, v2, v3, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->shrinksStandaloneImagesToFit:Z

    const/4 v9, 0x7

    invoke-virtual {v1, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->textAreasAreResizable:Z

    const/16 v3, 0x61

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->allowScriptsToCloseWindows:Z

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->remoteFontsEnabled:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->javascriptCanAccessClipboard:Z

    invoke-virtual {v1, v2, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->dnsPrefetchingEnabled:Z

    invoke-virtual {v1, v2, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->dataSaverEnabled:Z

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->localStorageEnabled:Z

    invoke-virtual {v1, v2, v3, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->databasesEnabled:Z

    invoke-virtual {v1, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->tabsToLinks:Z

    const/16 v3, 0x62

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->disableIpcFloodingProtection:Z

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->hyperlinkAuditingEnabled:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->allowUniversalAccessFromFileUrls:Z

    invoke-virtual {v1, v2, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->allowFileAccessFromFileUrls:Z

    invoke-virtual {v1, v2, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->webgl1Enabled:Z

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->webgl2Enabled:Z

    invoke-virtual {v1, v2, v3, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->pepper3dEnabled:Z

    invoke-virtual {v1, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->privilegedWebglExtensionsEnabled:Z

    const/16 v3, 0x63

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->webglErrorsToConsoleEnabled:Z

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->hideScrollbars:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->prefersDefaultScrollbarStyles:Z

    invoke-virtual {v1, v2, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->accelerated2dCanvasEnabled:Z

    invoke-virtual {v1, v2, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->canvas2dLayersEnabled:Z

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->antialiased2dCanvasDisabled:Z

    invoke-virtual {v1, v2, v3, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->antialiasedClips2dCanvasEnabled:Z

    invoke-virtual {v1, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->acceleratedFiltersEnabled:Z

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->deferredFiltersEnabled:Z

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->containerCullingEnabled:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->allowRunningInsecureContent:Z

    invoke-virtual {v1, v2, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->disableReadingFromCanvas:Z

    invoke-virtual {v1, v2, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->strictMixedContentChecking:Z

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->strictPowerfulFeatureRestrictions:Z

    invoke-virtual {v1, v2, v3, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->allowGeolocationOnInsecureOrigins:Z

    invoke-virtual {v1, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->strictlyBlockBlockableMixedContent:Z

    const/16 v3, 0x65

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->blockMixedPluginContent:Z

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->passwordEchoEnabled:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->shouldClearDocumentBackground:Z

    invoke-virtual {v1, v2, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->enableScrollAnimator:Z

    invoke-virtual {v1, v2, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->prefersReducedMotion:Z

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->prefersReducedTransparency:Z

    invoke-virtual {v1, v2, v3, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->invertedColors:Z

    invoke-virtual {v1, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->touchEventFeatureDetectionEnabled:Z

    const/16 v3, 0x66

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->dontSendKeyEventsToJavascript:Z

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->barrelButtonForDragEnabled:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->syncXhrInDocumentsEnabled:Z

    invoke-virtual {v1, v2, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->targetBlankImpliesNoOpenerEnabledWillBeRemoved:Z

    invoke-virtual {v1, v2, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->allowNonEmptyNavigatorPlugins:Z

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->supportsMultipleWindows:Z

    invoke-virtual {v1, v2, v3, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->viewportEnabled:Z

    invoke-virtual {v1, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->viewportMetaEnabled:Z

    const/16 v3, 0x67

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->autoZoomFocusedEditableToLegibleScale:Z

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->useNightDim:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->shrinksViewportContentsToFit:Z

    invoke-virtual {v1, v2, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->smoothScrollForFindEnabled:Z

    invoke-virtual {v1, v2, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->mainFrameResizesAreOrientationChanges:Z

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->initializeAtMinimumPageScale:Z

    invoke-virtual {v1, v2, v3, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->smartInsertDeleteEnabled:Z

    invoke-virtual {v1, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->pointerEventsMaxTouchPoints:I

    const/16 v3, 0x68

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->availablePointerTypes:I

    const/16 v3, 0x6c

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->primaryPointerType:I

    const/16 v3, 0x70

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->outputDeviceUpdateAbilityType:I

    const/16 v3, 0x74

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->availableHoverTypes:I

    const/16 v3, 0x78

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->primaryHoverType:I

    const/16 v3, 0x7c

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->numberOfCpuCores:I

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->editingBehavior:I

    const/16 v3, 0x84

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->nightDimGain:I

    const/16 v3, 0x88

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->viewportStyle:I

    const/16 v3, 0x8c

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->spatialNavigationEnabled:Z

    const/16 v3, 0x90

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->recordWholeDocument:Z

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->stylusHandwritingEnabled:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->cookieEnabled:Z

    invoke-virtual {v1, v2, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->acceleratedVideoDecodeEnabled:Z

    invoke-virtual {v1, v2, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->autoplayAllowed:Z

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->backgroundPlayEnabled:Z

    invoke-virtual {v1, v2, v3, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->blockAutoDownloadEnabled:Z

    invoke-virtual {v1, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->blockFixedFrameEnabled:Z

    const/16 v3, 0x91

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->blockWebFingerprintingEnabled:Z

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->blockPluginFingerprintingEnabled:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->baitElementOverrideEnabled:Z

    invoke-virtual {v1, v2, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->baitJavascriptDetectionEnabled:Z

    invoke-virtual {v1, v2, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->fullAntiAdblockAvoidanceEnabled:Z

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->compactModeEnabled:Z

    invoke-virtual {v1, v2, v3, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->userGestureRequiredForPresentation:Z

    invoke-virtual {v1, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->textTracksEnabled:Z

    const/16 v3, 0x92

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->immersiveModeEnabled:Z

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->doubleTapToZoomEnabled:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->fullscreenSupported:Z

    invoke-virtual {v1, v2, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->textAutosizingEnabled:Z

    invoke-virtual {v1, v2, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->forceEnableZoom:Z

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->supportDeprecatedTargetDensityDpi:Z

    invoke-virtual {v1, v2, v3, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->wideViewportQuirk:Z

    invoke-virtual {v1, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->useWideViewport:Z

    const/16 v3, 0x93

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->forceZeroLayoutHeight:Z

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->viewportMetaMergeContentQuirk:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->viewportMetaNonUserScalableQuirk:Z

    invoke-virtual {v1, v2, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->viewportMetaZeroValuesQuirk:Z

    invoke-virtual {v1, v2, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->clobberUserAgentInitialScaleQuirk:Z

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->ignoreMainFrameOverflowHiddenQuirk:Z

    invoke-virtual {v1, v2, v3, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->reportScreenSizeInPhysicalPixelsQuirk:Z

    invoke-virtual {v1, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->v8CacheOptions:I

    const/16 v3, 0x94

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->animationPolicy:I

    const/16 v3, 0x98

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->textTrackMarginPercentage:F

    const/16 v3, 0x9c

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->blockFixedFrameAllowedStrings:Ljava/lang/String;

    const/16 v3, 0xa0

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->blockWebFingerprintingAllowedDomains:Ljava/lang/String;

    const/16 v3, 0xa8

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->networkCountryIso:Ljava/lang/String;

    const/16 v3, 0xb0

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->textTrackBackgroundColor:Ljava/lang/String;

    const/16 v3, 0xb8

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->textTrackTextColor:Ljava/lang/String;

    const/16 v3, 0xc0

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->textTrackTextSize:Ljava/lang/String;

    const/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->textTrackTextShadow:Ljava/lang/String;

    const/16 v3, 0xd0

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->textTrackFontFamily:Ljava/lang/String;

    const/16 v3, 0xd8

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->textTrackFontStyle:Ljava/lang/String;

    const/16 v3, 0xe0

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->textTrackFontVariant:Ljava/lang/String;

    const/16 v3, 0xe8

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->textTrackWindowColor:Ljava/lang/String;

    const/16 v3, 0xf0

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->textTrackWindowRadius:Ljava/lang/String;

    const/16 v3, 0xf8

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->webAppScope:Lorg/chromium/url/mojom/Url;

    const/16 v3, 0x100

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->fontScaleFactor:F

    const/16 v3, 0x108

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->fontWeightAdjustment:I

    const/16 v3, 0x10c

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->textSizeContrastFactor:I

    const/16 v3, 0x110

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->deviceScaleAdjustment:F

    const/16 v3, 0x114

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->defaultVideoPosterUrl:Lorg/chromium/url/mojom/Url;

    const/16 v3, 0x118

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->reuseGlobalForUnownedMainFrame:Z

    const/16 v3, 0x120

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->contentBlockerEnabled:Z

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->contentBlockerStatisticsEnabled:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->defaultContentBlockerEnabled:Z

    invoke-virtual {v1, v2, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->spellcheckEnabledByDefault:Z

    invoke-virtual {v1, v2, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->videoFullscreenOrientationLockEnabled:Z

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->videoRotateToFullscreenEnabled:Z

    invoke-virtual {v1, v2, v3, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->embeddedMediaExperienceEnabled:Z

    invoke-virtual {v1, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->cssHexAlphaColorEnabled:Z

    const/16 v3, 0x121

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->scrollTopLeftInteropEnabled:Z

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->disableAcceleratedSmallCanvases:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->longPressLinkSelectText:Z

    invoke-virtual {v1, v2, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->nightModeEnabled:Z

    invoke-virtual {v1, v2, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->highContrastModeEnabled:Z

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->disableWebauthn:Z

    invoke-virtual {v1, v2, v3, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->forceDarkModeEnabled:Z

    invoke-virtual {v1, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->hideDownloadUi:Z

    const/16 v3, 0x122

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->presentationReceiver:Z

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->mediaControlsEnabled:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->doNotUpdateSelectionOnMutatingSelectionRange:Z

    invoke-virtual {v1, v2, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->requireTransientActivationForGetDisplayMedia:Z

    invoke-virtual {v1, v2, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->requireTransientActivationForShowFileOrDirectoryPicker:Z

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->requireTransientActivationAndUserConfirmationForSubappsApi:Z

    invoke-virtual {v1, v2, v3, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->inForcedColors:Z

    invoke-virtual {v1, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->isForcedColorsDisabled:Z

    const/16 v3, 0x123

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->pictureInPictureEnabled:Z

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->translateServiceAvailable:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->lazyLoadEnabled:Z

    invoke-virtual {v1, v2, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->allowMixedContentUpgrades:Z

    invoke-virtual {v1, v2, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->alwaysShowFocus:Z

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->touchDragDropEnabled:Z

    invoke-virtual {v1, v2, v3, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->webxrImmersiveArAllowed:Z

    invoke-virtual {v1, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->vaxContrastFactor:I

    const/16 v3, 0x124

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->systemColors:Lorg/chromium/blink/mojom/SystemColors;

    const/16 v3, 0x128

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->defaultMinimumPageScaleFactor:F

    const/16 v3, 0x130

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->defaultMaximumPageScaleFactor:F

    const/16 v3, 0x134

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->forceDarkBehavior:I

    const/16 v3, 0x138

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->autoplayPolicy:I

    const/16 v3, 0x13c

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->rootScrollbarThemeColor:Lorg/chromium/skia/mojom/SkColor;

    const/16 v3, 0x140

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->preferredRootScrollbarColorScheme:I

    const/16 v3, 0x148

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->preferredColorScheme:I

    const/16 v3, 0x14c

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->preferredContrast:I

    const/16 v3, 0x150

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->lowPriorityIframesThreshold:I

    const/16 v3, 0x154

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->networkQualityEstimatorWebHoldback:I

    const/16 v3, 0x158

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->rendererWideNamedFrameLookup:Z

    const/16 v3, 0x15c

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->antiTrackingEnabled:Z

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->cnameCloakingEnabled:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->strictReferrerStrippingEnabled:Z

    invoke-virtual {v1, v2, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->strictMimeTypeCheckForWorkerScriptsEnabled:Z

    invoke-virtual {v1, v2, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->modalContextMenu:Z

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->dynamicSafeAreaInsetsEnabled:Z

    invoke-virtual {v1, v2, v3, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->paymentRequestEnabled:Z

    invoke-virtual {v1, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->automaticStorageAccessState:I

    const/16 v3, 0x160

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/WebPreferences;->screenAntiFingerprintingMode:I

    const/16 v3, 0x164

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, v0, Lorg/chromium/blink/mojom/WebPreferences;->webAudioAntiFingerprintMode:I

    const/16 v2, 0x168

    invoke-virtual {v1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
