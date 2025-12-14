.class Lorg/chromium/base/CommandLineJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/CommandLine$Natives;


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

.method public static get()Lorg/chromium/base/CommandLine$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/base/CommandLineJni;

    invoke-direct {v0}, Lorg/chromium/base/CommandLineJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MUoYiNbY(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getSwitchValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, LJ/N;->MZJ2lrZY(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public hasSwitch(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->MsCvypjU(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public init(Ljava/util/List;)V
    .locals 0

    invoke-static {p1}, LJ/N;->MDkrKi31(Ljava/lang/Object;)V

    return-void
.end method

.method public removeSwitch(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, LJ/N;->M1cMYXGO(Ljava/lang/Object;)V

    return-void
.end method
