.class public Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InitialNavigationState"
.end annotation


# instance fields
.field public final hasUserGesture:Z

.field public final isFromFormSubmit:Z

.field public final isFromIntent:Z

.field public final isFromReload:Z

.field public final isFromTyping:Z

.field public final isRendererInitiated:Z

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;ZZZZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;->this$0:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;->isRendererInitiated:Z

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;->hasUserGesture:Z

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;->isFromReload:Z

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;->isFromTyping:Z

    iput-boolean p6, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;->isFromFormSubmit:Z

    iput-boolean p7, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;->isFromIntent:Z

    return-void
.end method
