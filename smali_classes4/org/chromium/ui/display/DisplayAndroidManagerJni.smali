.class Lorg/chromium/ui/display/DisplayAndroidManagerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/display/DisplayAndroidManager$Natives;


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

.method public static get()Lorg/chromium/ui/display/DisplayAndroidManager$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/ui/display/DisplayAndroidManagerJni;

    invoke-direct {v0}, Lorg/chromium/ui/display/DisplayAndroidManagerJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public removeDisplay(JLorg/chromium/ui/display/DisplayAndroidManager;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MyzQIqd_(JLjava/lang/Object;I)V

    return-void
.end method

.method public setPrimaryDisplayId(JLorg/chromium/ui/display/DisplayAndroidManager;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MdOwtyr6(JLjava/lang/Object;I)V

    return-void
.end method

.method public updateDisplay(JLorg/chromium/ui/display/DisplayAndroidManager;ILjava/lang/String;[I[IFIIIZZFZ)V
    .locals 0

    invoke-static/range {p1 .. p15}, LJ/N;->M2$ANfTC(JLjava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;FIIIZZFZ)V

    return-void
.end method
