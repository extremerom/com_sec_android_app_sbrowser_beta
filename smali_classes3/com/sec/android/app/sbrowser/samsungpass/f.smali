.class public final synthetic Lcom/sec/android/app/sbrowser/samsungpass/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/authfw/pass/sdk/listener/FmmLockDisableListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/samsungpass/f;->a:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;

    return-void
.end method


# virtual methods
.method public final onFinished(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/f;->a:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->a(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;ILjava/lang/String;)V

    return-void
.end method
