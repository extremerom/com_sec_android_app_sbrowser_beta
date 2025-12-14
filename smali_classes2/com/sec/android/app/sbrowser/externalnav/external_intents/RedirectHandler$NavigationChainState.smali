.class Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NavigationChainState"
.end annotation


# instance fields
.field final mHasUserStartedNonInitialNavigation:Z

.field final mInitialNavigationState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;

.field mIsOnFirstLoadInChain:Z

.field final mNavigationChainStartTime:J

.field mPerformedHiddenCrossFrameNavigation:Z

.field mShouldNotOverrideUrlLoadingOnCurrentNavigationChain:Z

.field mUsedBackOrForward:Z

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;ZLcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;->this$0:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;->mIsOnFirstLoadInChain:Z

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->currentRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;->mNavigationChainStartTime:J

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;->mHasUserStartedNonInitialNavigation:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;->mInitialNavigationState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;

    return-void
.end method
