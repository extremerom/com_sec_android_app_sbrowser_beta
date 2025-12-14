.class public final synthetic Lcom/sec/android/app/sbrowser/auth/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/auth/AuthActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/auth/AuthActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/a;->a:Lcom/sec/android/app/sbrowser/auth/AuthActivity;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/a;->a:Lcom/sec/android/app/sbrowser/auth/AuthActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->onBackPressed()V

    return-void
.end method
