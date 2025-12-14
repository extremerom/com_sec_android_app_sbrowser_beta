.class public Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mApplicationMustBeInForeground:Z

.field private mAsyncActionTakenCallback:Lcom/sec/terrace/base/TerraceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/terrace/base/TerraceCallback<",
            "Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;",
            ">;"
        }
    .end annotation
.end field

.field private mHasUserGesture:Z

.field private mInitiatorOrigin:Lcom/sec/terrace/TerraceOrigin;

.field private mIsBackgroundTabNavigation:Z

.field private mIsHiddenCrossFrameNavigation:Z

.field private mIsIncognito:Z

.field private mIsInitialNavigationInFrame:Z

.field private mIsMainFrame:Z

.field private mIsRedirect:Z

.field private mIsRendererInitiated:Z

.field private mIsSandboxedMainFrame:Z

.field private mNativeClientPackageName:Ljava/lang/String;

.field private mOpenInNewTab:Z

.field private mPageTransition:I

.field private mRedirectHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

.field private mReferrerUrl:Ljava/lang/String;

.field private mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mUrl:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mIsIncognito:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mUrl:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mIsIncognito:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mReferrerUrl:Ljava/lang/String;

    iput p4, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mPageTransition:I

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mIsRedirect:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;
    .locals 24

    move-object/from16 v0, p0

    new-instance v22, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    move-object/from16 v1, v22

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mUrl:Ljava/lang/String;

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mIsIncognito:Z

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mReferrerUrl:Ljava/lang/String;

    iget v5, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mPageTransition:I

    iget-boolean v6, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mIsRedirect:Z

    iget-boolean v7, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mApplicationMustBeInForeground:Z

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mRedirectHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-boolean v10, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mOpenInNewTab:Z

    iget-boolean v11, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mIsBackgroundTabNavigation:Z

    iget-boolean v12, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mIsMainFrame:Z

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mNativeClientPackageName:Ljava/lang/String;

    iget-boolean v14, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mHasUserGesture:Z

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mAsyncActionTakenCallback:Lcom/sec/terrace/base/TerraceCallback;

    move-object/from16 v23, v1

    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mIsRendererInitiated:Z

    move/from16 v16, v1

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mInitiatorOrigin:Lcom/sec/terrace/TerraceOrigin;

    move-object/from16 v17, v1

    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mIsInitialNavigationInFrame:Z

    move/from16 v18, v1

    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mIsHiddenCrossFrameNavigation:Z

    move/from16 v19, v1

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mIsSandboxedMainFrame:Z

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v1, v23

    invoke-direct/range {v1 .. v21}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;-><init>(Ljava/lang/String;ZLjava/lang/String;IZZLcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZZLjava/lang/String;ZLcom/sec/terrace/base/TerraceCallback;ZLcom/sec/terrace/TerraceOrigin;ZZZI)V

    return-object v22
.end method

.method public setApplicationMustBeInForeground(Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mApplicationMustBeInForeground:Z

    return-object p0
.end method

.method public setAsyncActionTakenCallback(Lcom/sec/terrace/base/TerraceCallback;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/base/TerraceCallback<",
            "Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mAsyncActionTakenCallback:Lcom/sec/terrace/base/TerraceCallback;

    return-object p0
.end method

.method public setHasUserGesture(Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mHasUserGesture:Z

    return-object p0
.end method

.method public setInitiatorOrigin(Lcom/sec/terrace/TerraceOrigin;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mInitiatorOrigin:Lcom/sec/terrace/TerraceOrigin;

    return-object p0
.end method

.method public setIsBackgroundTabNavigation(Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mIsBackgroundTabNavigation:Z

    return-object p0
.end method

.method public setIsHiddenCrossFrameNavigation(Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mIsHiddenCrossFrameNavigation:Z

    return-object p0
.end method

.method public setIsInitialNavigationInFrame(Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mIsInitialNavigationInFrame:Z

    return-object p0
.end method

.method public setIsMainFrame(Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mIsMainFrame:Z

    return-object p0
.end method

.method public setIsRendererInitiated(Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mIsRendererInitiated:Z

    return-object p0
.end method

.method public setIsSandboxedMainFrame(Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mIsSandboxedMainFrame:Z

    return-object p0
.end method

.method public setNativeClientPackageName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mNativeClientPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setOpenInNewTab(Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mOpenInNewTab:Z

    return-object p0
.end method

.method public setRedirectHandler(Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mRedirectHandler:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    return-object p0
.end method

.method public setTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$Builder;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    return-object p0
.end method
