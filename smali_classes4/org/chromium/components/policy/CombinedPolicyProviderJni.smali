.class Lorg/chromium/components/policy/CombinedPolicyProviderJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/policy/CombinedPolicyProvider$Natives;


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

.method public static get()Lorg/chromium/components/policy/CombinedPolicyProvider$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/policy/CombinedPolicyProviderJni;

    invoke-direct {v0}, Lorg/chromium/components/policy/CombinedPolicyProviderJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public flushPolicies(JLorg/chromium/components/policy/CombinedPolicyProvider;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M81oD3lB(JLjava/lang/Object;)V

    return-void
.end method
