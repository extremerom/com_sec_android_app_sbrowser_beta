.class public Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate;
.super Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate$Natives;
    }
.end annotation


# instance fields
.field private final mPasswordAutofillType:I

.field private final mUserNameIndex:I

.field private final mUserNames:[Ljava/lang/String;


# direct methods
.method private constructor <init>(J[Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;-><init>(IJ)V

    iput-object p3, p0, Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate;->mUserNames:[Ljava/lang/String;

    iput p4, p0, Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate;->mUserNameIndex:I

    iput p5, p0, Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate;->mPasswordAutofillType:I

    return-void
.end method

.method public static create(J[Ljava/lang/String;II)Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate;
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v6, Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate;

    move-object v0, v6

    move-wide v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate;-><init>(J[Ljava/lang/String;II)V

    return-object v6
.end method


# virtual methods
.method public getPasswordAutofillType()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate;->mPasswordAutofillType:I

    return p0
.end method

.method public getUserNameIndex()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate;->mUserNameIndex:I

    return p0
.end method

.method public getUserNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate;->mUserNames:[Ljava/lang/String;

    return-object p0
.end method

.method public setSelectedUserNameIndex(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->getNativePtr()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegateJni;->get()Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate$Natives;

    move-result-object v2

    invoke-interface {v2, v0, v1, p0, p1}, Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate$Natives;->setSelectedUserNameIndex(JLcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate;I)V

    :cond_0
    return-void
.end method
