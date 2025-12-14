.class Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridgeJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridgeJni;

    invoke-direct {v0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridgeJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public didDeleteID(JLorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;IZ)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MB$4Dsst(JLjava/lang/Object;IZ)V

    return-void
.end method

.method public didDeleteToken(JLorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;IZ)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MWbugtkA(JLjava/lang/Object;IZ)V

    return-void
.end method

.method public didGetCreationTime(JLorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;IJ)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->M1_H2CVT(JLjava/lang/Object;IJ)V

    return-void
.end method

.method public didGetID(JLorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;ILjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MdjzqME2(JLjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public didGetToken(JLorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;ILjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MgpbhGOm(JLjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method
