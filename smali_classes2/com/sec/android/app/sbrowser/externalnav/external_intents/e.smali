.class public final synthetic Lcom/sec/android/app/sbrowser/externalnav/external_intents/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

.field public final synthetic d:Landroid/content/Intent;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/e;->a:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/e;->c:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/e;->d:Landroid/content/Intent;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/e;->e:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/e;->f:Z

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/e;->c:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/e;->d:Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/e;->a:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/e;->e:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/e;->f:Z

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->c(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;ZLandroid/content/DialogInterface;)V

    return-void
.end method
