.class Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegateJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegateJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegateJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onPermissionResult(JLcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->Mse8jfLL(JLjava/lang/Object;Z)V

    return-void
.end method
