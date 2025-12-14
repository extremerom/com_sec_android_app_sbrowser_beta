.class Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->init(Landroid/content/Context;Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;Landroid/content/Context;Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$1;->val$handler:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$1;->val$handler:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->k(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;Landroid/content/Context;Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;)V

    return-void
.end method
