.class public Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;
.super Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate$EmbargoHandler;
    }
.end annotation


# instance fields
.field private mEmbargoHandler:Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate$EmbargoHandler;

.field private mPermissionType:I

.field private mRequestingOrigin:Ljava/lang/String;


# direct methods
.method public constructor <init>(JILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;-><init>(IJ)V

    iput p3, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;->mPermissionType:I

    iput-object p4, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;->mRequestingOrigin:Ljava/lang/String;

    return-void
.end method

.method public static create(JILjava/lang/String;)Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;-><init>(JILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getPermissionType()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;->mPermissionType:I

    return p0
.end method

.method public getRequestingOrigin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;->mRequestingOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public onPermissionEmbargoed()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;->mEmbargoHandler:Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate$EmbargoHandler;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;->mPermissionType:I

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate$EmbargoHandler;->onPermissionEmbargoed(I)V

    :cond_0
    return-void
.end method

.method public setEmbargoHandler(Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate$EmbargoHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;->mEmbargoHandler:Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate$EmbargoHandler;

    return-void
.end method
