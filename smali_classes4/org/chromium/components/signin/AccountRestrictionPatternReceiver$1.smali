.class Lorg/chromium/components/signin/AccountRestrictionPatternReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/signin/AccountRestrictionPatternReceiver;-><init>(Lorg/chromium/base/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/signin/AccountRestrictionPatternReceiver;

.field final synthetic val$onPatternsUpdated:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/AccountRestrictionPatternReceiver;Lorg/chromium/base/Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/signin/AccountRestrictionPatternReceiver$1;->this$0:Lorg/chromium/components/signin/AccountRestrictionPatternReceiver;

    iput-object p2, p0, Lorg/chromium/components/signin/AccountRestrictionPatternReceiver$1;->val$onPatternsUpdated:Lorg/chromium/base/Callback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lorg/chromium/components/signin/AccountRestrictionPatternReceiver$1;->this$0:Lorg/chromium/components/signin/AccountRestrictionPatternReceiver;

    invoke-static {p1}, Lorg/chromium/components/signin/AccountRestrictionPatternReceiver;->b(Lorg/chromium/components/signin/AccountRestrictionPatternReceiver;)Lorg/chromium/base/Promise;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/components/signin/AccountRestrictionPatternReceiver$1;->val$onPatternsUpdated:Lorg/chromium/base/Callback;

    invoke-virtual {p1, p0}, Lorg/chromium/base/Promise;->then(Lorg/chromium/base/Callback;)V

    return-void
.end method
