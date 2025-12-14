.class public Lcom/sec/terrace/browser/infobars/password_manager/TerraceSavePasswordInfobarDelegate;
.super Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/infobars/password_manager/TerraceSavePasswordInfobarDelegate$Natives;
    }
.end annotation


# direct methods
.method private constructor <init>(J)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;-><init>(IJ)V

    return-void
.end method

.method public static create(J)Lcom/sec/terrace/browser/infobars/password_manager/TerraceSavePasswordInfobarDelegate;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/infobars/password_manager/TerraceSavePasswordInfobarDelegate;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/browser/infobars/password_manager/TerraceSavePasswordInfobarDelegate;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public setPasswordAutofillType(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->getNativePtr()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/infobars/password_manager/TerraceSavePasswordInfobarDelegateJni;->get()Lcom/sec/terrace/browser/infobars/password_manager/TerraceSavePasswordInfobarDelegate$Natives;

    move-result-object v2

    invoke-interface {v2, v0, v1, p0, p1}, Lcom/sec/terrace/browser/infobars/password_manager/TerraceSavePasswordInfobarDelegate$Natives;->setPasswordAutofillType(JLcom/sec/terrace/browser/infobars/password_manager/TerraceSavePasswordInfobarDelegate;I)V

    :cond_0
    return-void
.end method
