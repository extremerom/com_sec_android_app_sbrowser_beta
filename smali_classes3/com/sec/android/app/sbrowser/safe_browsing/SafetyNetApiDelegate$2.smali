.class Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->startUriLookup(JLjava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

.field final synthetic val$callbackId:J

.field final synthetic val$threatsOfInterest:[I

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;JLjava/lang/String;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$2;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$2;->val$callbackId:J

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$2;->val$uri:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$2;->val$threatsOfInterest:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$2;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$2;->val$callbackId:J

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$2;->val$uri:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$2;->val$threatsOfInterest:[I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->l(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;JLjava/lang/String;[I)V

    return-void
.end method
