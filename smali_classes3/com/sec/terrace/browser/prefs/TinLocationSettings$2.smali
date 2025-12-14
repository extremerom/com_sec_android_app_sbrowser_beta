.class Lcom/sec/terrace/browser/prefs/TinLocationSettings$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/prefs/TinLocationSettings;->promptToEnableLocation(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/base/Callback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$nativeCallback:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/sec/terrace/browser/prefs/TinLocationSettings$2;->val$nativeCallback:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Integer;)V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinLocationSettingsJni;->get()Lcom/sec/terrace/browser/prefs/TinLocationSettings$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/prefs/TinLocationSettings$2;->val$nativeCallback:J

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/prefs/TinLocationSettings$Natives;->onLocationSettingsDialogOutcome(JI)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/prefs/TinLocationSettings$2;->onResult(Ljava/lang/Integer;)V

    return-void
.end method
