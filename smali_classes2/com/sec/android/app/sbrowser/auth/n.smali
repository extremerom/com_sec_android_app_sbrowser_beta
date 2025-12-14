.class public final synthetic Lcom/sec/android/app/sbrowser/auth/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/AuthCallback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/n;->a:Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;

    return-void
.end method


# virtual methods
.method public final onAuthResult(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/n;->a:Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;->j(Lcom/sec/android/app/sbrowser/auth/InitialInfoActivity;Z)V

    return-void
.end method
