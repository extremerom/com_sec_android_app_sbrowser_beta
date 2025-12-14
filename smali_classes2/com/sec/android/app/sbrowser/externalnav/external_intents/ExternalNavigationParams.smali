.class public Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;,
        Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;
    }
.end annotation


# instance fields
.field private final mApplicationMustBeInForeground:Z

.field private final mAsyncActionTakenCallback:Lcom/sec/terrace/base/TerraceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/terrace/base/TerraceCallback<",
            "Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mHasUserGesture:Z

.field private mInitiatorOrigin:Lcom/sec/terrace/TerraceOrigin;

.field private final mIsBackgroundTabNavigation:Z

.field private final mIsHiddenCrossFrameNavigation:Z

.field private final mIsIncognito:Z

.field private final mIsInitialNavigationInFrame:Z

.field private final mIsMainFrame:Z

.field private final mIsRedirect:Z

.field private mIsRendererInitiated:Z

.field private final mIsSandboxedMainFrame:Z

.field private final mNativeClientPackageName:Ljava/lang/String;

.field private final mOpenInNewTab:Z

.field private final mPageTransition:I

.field private final mRedirectHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

.field private final mReferrerUrl:Ljava/lang/String;

.field private mRequiredAsyncActionTakenCallback:Lcom/sec/terrace/base/TerraceRequiredCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/terrace/base/TerraceRequiredCallback<",
            "Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLjava/lang/String;IZZLcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZZLjava/lang/String;ZLcom/sec/terrace/base/TerraceCallback;ZLcom/sec/terrace/TerraceOrigin;ZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "IZZ",
            "Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            "ZZZ",
            "Ljava/lang/String;",
            "Z",
            "Lcom/sec/terrace/base/TerraceCallback<",
            "Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;",
            ">;Z",
            "Lcom/sec/terrace/TerraceOrigin;",
            "ZZZ)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mUrl:Ljava/lang/String;

    move v1, p2

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mIsIncognito:Z

    move v1, p4

    iput v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mPageTransition:I

    move-object v1, p3

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mReferrerUrl:Ljava/lang/String;

    move v1, p5

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mIsRedirect:Z

    move v1, p6

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mApplicationMustBeInForeground:Z

    move-object v1, p7

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mRedirectHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-object v1, p8

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move v1, p9

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mOpenInNewTab:Z

    move v1, p10

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mIsBackgroundTabNavigation:Z

    move v1, p11

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mIsMainFrame:Z

    move-object v1, p12

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mNativeClientPackageName:Ljava/lang/String;

    move v1, p13

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mHasUserGesture:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mAsyncActionTakenCallback:Lcom/sec/terrace/base/TerraceCallback;

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mIsRendererInitiated:Z

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mInitiatorOrigin:Lcom/sec/terrace/TerraceOrigin;

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mIsInitialNavigationInFrame:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mIsHiddenCrossFrameNavigation:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mIsSandboxedMainFrame:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/String;IZZLcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZZLjava/lang/String;ZLcom/sec/terrace/base/TerraceCallback;ZLcom/sec/terrace/TerraceOrigin;ZZZI)V
    .locals 0

    invoke-direct/range {p0 .. p19}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;-><init>(Ljava/lang/String;ZLjava/lang/String;IZZLcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZZLjava/lang/String;ZLcom/sec/terrace/base/TerraceCallback;ZLcom/sec/terrace/TerraceOrigin;ZZZ)V

    return-void
.end method


# virtual methods
.method public getPageTransition()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mPageTransition:I

    return p0
.end method

.method public getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mRedirectHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    return-object p0
.end method

.method public getReferrerUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mReferrerUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getRequiredAsyncActionTakenCallback()Lcom/sec/terrace/base/TerraceRequiredCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/terrace/base/TerraceRequiredCallback<",
            "Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mRequiredAsyncActionTakenCallback:Lcom/sec/terrace/base/TerraceRequiredCallback;

    return-object p0
.end method

.method public getTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public hasUserGesture()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mHasUserGesture:Z

    return p0
.end method

.method public isApplicationMustBeInForeground()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mApplicationMustBeInForeground:Z

    return p0
.end method

.method public isBackgroundTabNavigation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mIsBackgroundTabNavigation:Z

    return p0
.end method

.method public isFromIntent()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mPageTransition:I

    const/high16 v0, 0x8000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHiddenCrossFrameNavigation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mIsHiddenCrossFrameNavigation:Z

    return p0
.end method

.method public isIncognito()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mIsIncognito:Z

    return p0
.end method

.method public isInitialNavigationInFrame()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mIsInitialNavigationInFrame:Z

    return p0
.end method

.method public isLinkTransition()Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mPageTransition:I

    and-int/lit16 p0, p0, 0xff

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMainFrame()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mIsMainFrame:Z

    return p0
.end method

.method public isOpenInNewTab()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mOpenInNewTab:Z

    return p0
.end method

.method public isRedirect()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mIsRedirect:Z

    return p0
.end method

.method public isRendererInitiated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mIsRendererInitiated:Z

    return p0
.end method

.method public isSandboxedMainFrame()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mIsSandboxedMainFrame:Z

    return p0
.end method

.method public nativeClientPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mNativeClientPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public onAsyncActionStarted()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mAsyncActionTakenCallback:Lcom/sec/terrace/base/TerraceCallback;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/terrace/base/TerraceRequiredCallback;

    invoke-direct {v1, v0}, Lcom/sec/terrace/base/TerraceRequiredCallback;-><init>(Lcom/sec/terrace/base/TerraceCallback;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->mRequiredAsyncActionTakenCallback:Lcom/sec/terrace/base/TerraceRequiredCallback;

    :cond_0
    return-void
.end method
