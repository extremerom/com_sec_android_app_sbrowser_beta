.class public final synthetic LU7/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;

.field public final synthetic b:LU7/e;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;LU7/e;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU7/d;->a:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;

    iput-object p2, p0, LU7/d;->b:LU7/e;

    iput-object p3, p0, LU7/d;->c:Ljava/lang/String;

    iput-boolean p4, p0, LU7/d;->d:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, LU7/d;->b:LU7/e;

    iget-object v1, p0, LU7/d;->c:Ljava/lang/String;

    iget-boolean v8, p0, LU7/d;->d:Z

    iget-object p0, p0, LU7/d;->a:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LU7/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LI3/d;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, LI3/d;-><init>(IB)V

    new-instance v2, LI3/c;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, LI3/c;-><init>(IZ)V

    iput-object v0, v2, LI3/c;->b:Ljava/lang/Object;

    new-instance v3, LG5/i3;

    invoke-direct {v3, v2}, LG5/i3;-><init>(LI3/c;)V

    iput-object v3, v1, LI3/d;->b:Ljava/lang/Object;

    new-instance v6, LG5/k3;

    invoke-direct {v6, v1}, LG5/k3;-><init>(LI3/d;)V

    sget-object v7, LG5/N2;->zza:LG5/N2;

    move-object v2, p0

    move-wide v3, v9

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->a(JZLG5/k3;LG5/N2;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v7, LG5/N2;->zzV:LG5/N2;

    const/4 v6, 0x0

    move-object v2, p0

    move-wide v3, v9

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->a(JZLG5/k3;LG5/N2;)V

    throw v0
.end method
