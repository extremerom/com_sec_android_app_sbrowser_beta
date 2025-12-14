.class Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager;->runSuccessCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager$2;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager$2;->val$token:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager;->onTokenRequestSuccess(Ljava/lang/String;)V

    return-void
.end method
