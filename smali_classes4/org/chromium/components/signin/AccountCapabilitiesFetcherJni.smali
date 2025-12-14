.class Lorg/chromium/components/signin/AccountCapabilitiesFetcherJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/signin/AccountCapabilitiesFetcher$Natives;


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

.method public static get()Lorg/chromium/components/signin/AccountCapabilitiesFetcher$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/signin/AccountCapabilitiesFetcherJni;

    invoke-direct {v0}, Lorg/chromium/components/signin/AccountCapabilitiesFetcherJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCapabilitiesFetchComplete(Lorg/chromium/components/signin/base/AccountCapabilities;J)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M8lmDXtQ(Ljava/lang/Object;J)V

    return-void
.end method
