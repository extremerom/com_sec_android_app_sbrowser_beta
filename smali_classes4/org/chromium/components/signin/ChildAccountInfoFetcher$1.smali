.class Lorg/chromium/components/signin/ChildAccountInfoFetcher$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/signin/ChildAccountInfoFetcher;-><init>(JLorg/chromium/components/signin/base/CoreAccountInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/signin/ChildAccountInfoFetcher;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/ChildAccountInfoFetcher;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/signin/ChildAccountInfoFetcher$1;->this$0:Lorg/chromium/components/signin/ChildAccountInfoFetcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    const-string p1, "account"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "signin"

    const-string v1, "Received account flag change broadcast for %s"

    invoke-static {v0, v1, p2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/chromium/components/signin/ChildAccountInfoFetcher$1;->this$0:Lorg/chromium/components/signin/ChildAccountInfoFetcher;

    invoke-static {p2}, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->b(Lorg/chromium/components/signin/ChildAccountInfoFetcher;)Lorg/chromium/components/signin/base/CoreAccountInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/chromium/components/signin/base/CoreAccountInfo;->getEmail()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/chromium/components/signin/ChildAccountInfoFetcher$1;->this$0:Lorg/chromium/components/signin/ChildAccountInfoFetcher;

    invoke-static {p0}, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->c(Lorg/chromium/components/signin/ChildAccountInfoFetcher;)V

    :cond_0
    return-void
.end method
