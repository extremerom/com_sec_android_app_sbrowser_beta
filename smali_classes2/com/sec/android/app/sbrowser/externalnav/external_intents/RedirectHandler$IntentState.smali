.class Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentState"
.end annotation


# instance fields
.field mCachedResolvers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mExternalIntentStartedTask:Z

.field final mInitialIntent:Landroid/content/Intent;

.field final mIsCustomTabIntent:Z

.field final mPreferToStayInSBrowser:Z


# direct methods
.method public constructor <init>(Landroid/content/Intent;ZZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;->mCachedResolvers:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;->mInitialIntent:Landroid/content/Intent;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;->mPreferToStayInSBrowser:Z

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;->mIsCustomTabIntent:Z

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;->mExternalIntentStartedTask:Z

    return-void
.end method
