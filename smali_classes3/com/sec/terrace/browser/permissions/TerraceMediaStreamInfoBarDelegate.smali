.class public Lcom/sec/terrace/browser/permissions/TerraceMediaStreamInfoBarDelegate;
.super Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;
.source "SourceFile"


# direct methods
.method private constructor <init>(JILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;-><init>(JILjava/lang/String;)V

    return-void
.end method

.method public static create(JILjava/lang/String;)Lcom/sec/terrace/browser/permissions/TerraceMediaStreamInfoBarDelegate;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/permissions/TerraceMediaStreamInfoBarDelegate;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/permissions/TerraceMediaStreamInfoBarDelegate;-><init>(JILjava/lang/String;)V

    return-object v0
.end method
