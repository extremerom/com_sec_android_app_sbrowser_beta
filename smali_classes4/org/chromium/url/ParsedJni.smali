.class Lorg/chromium/url/ParsedJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/url/Parsed$Natives;


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

.method public static get()Lorg/chromium/url/Parsed$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/url/ParsedJni;

    invoke-direct {v0}, Lorg/chromium/url/ParsedJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public initNative(JZIIIIIIIIIIIIIIIIZ)V
    .locals 0

    invoke-static/range {p1 .. p20}, LJ/N;->M3eG9Yne(JZIIIIIIIIIIIIIIIIZ)V

    return-void
.end method
