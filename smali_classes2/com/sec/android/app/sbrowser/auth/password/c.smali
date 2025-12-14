.class public final synthetic Lcom/sec/android/app/sbrowser/auth/password/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/c;->a:Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;

    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/c;->a:Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->B(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Z)V

    return-void
.end method
