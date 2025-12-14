.class Lcom/sec/terrace/browser/vr/ArCoreInstallUtilsJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$ArInstallHelperNative;


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

.method public static get()Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$ArInstallHelperNative;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/vr/ArCoreInstallUtilsJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/vr/ArCoreInstallUtilsJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onRequestInstallSupportedArCoreResult(JZ)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MxD$a_Of(JZ)V

    return-void
.end method
