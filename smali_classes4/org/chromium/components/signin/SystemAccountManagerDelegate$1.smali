.class Lorg/chromium/components/signin/SystemAccountManagerDelegate$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/signin/SystemAccountManagerDelegate;->attachAccountsChangeObserver(Lorg/chromium/components/signin/AccountsChangeObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/signin/SystemAccountManagerDelegate;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/SystemAccountManagerDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/signin/SystemAccountManagerDelegate$1;->this$0:Lorg/chromium/components/signin/SystemAccountManagerDelegate;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/signin/SystemAccountManagerDelegate$1;->this$0:Lorg/chromium/components/signin/SystemAccountManagerDelegate;

    invoke-static {p0}, Lorg/chromium/components/signin/SystemAccountManagerDelegate;->a(Lorg/chromium/components/signin/SystemAccountManagerDelegate;)Lorg/chromium/components/signin/AccountsChangeObserver;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/components/signin/AccountsChangeObserver;

    invoke-interface {p0}, Lorg/chromium/components/signin/AccountsChangeObserver;->onCoreAccountInfosChanged()V

    return-void
.end method
