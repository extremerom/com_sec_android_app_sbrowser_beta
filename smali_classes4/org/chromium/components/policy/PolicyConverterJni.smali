.class Lorg/chromium/components/policy/PolicyConverterJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/policy/PolicyConverter$Natives;


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

.method public static get()Lorg/chromium/components/policy/PolicyConverter$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/policy/PolicyConverterJni;

    invoke-direct {v0}, Lorg/chromium/components/policy/PolicyConverterJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public setPolicyBoolean(JLorg/chromium/components/policy/PolicyConverter;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MNcVehwq(JLjava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public setPolicyInteger(JLorg/chromium/components/policy/PolicyConverter;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MX$FOTbg(JLjava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method

.method public setPolicyString(JLorg/chromium/components/policy/PolicyConverter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->Mu_Zn154(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setPolicyStringArray(JLorg/chromium/components/policy/PolicyConverter;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MLFU3fY7(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
