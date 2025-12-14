.class Lorg/chromium/base/EarlyTraceEventJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/EarlyTraceEvent$Natives;


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

.method public static get()Lorg/chromium/base/EarlyTraceEvent$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/base/EarlyTraceEventJni;

    invoke-direct {v0}, Lorg/chromium/base/EarlyTraceEventJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public recordEarlyAsyncBeginEvent(Ljava/lang/String;JJ)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->M_Gv8TwM(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public recordEarlyAsyncEndEvent(JJ)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MrKsqeCD(JJ)V

    return-void
.end method

.method public recordEarlyBeginEvent(Ljava/lang/String;JIJ)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MrWG2uUW(Ljava/lang/Object;JIJ)V

    return-void
.end method

.method public recordEarlyEndEvent(Ljava/lang/String;JIJ)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MmyrhqXB(Ljava/lang/Object;JIJ)V

    return-void
.end method

.method public recordEarlyToplevelBeginEvent(Ljava/lang/String;JIJ)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->M7UXCmoq(Ljava/lang/Object;JIJ)V

    return-void
.end method

.method public recordEarlyToplevelEndEvent(Ljava/lang/String;JIJ)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MRlw2LEn(Ljava/lang/Object;JIJ)V

    return-void
.end method
