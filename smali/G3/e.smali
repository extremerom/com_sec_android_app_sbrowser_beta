.class public final LG3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG3/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:LG3/f;

.field public final c:LF3/a;

.field public final d:LF3/a;

.field public final e:LF3/a;

.field public final f:LF3/a;

.field public final g:LF3/b;

.field public final h:LG3/t;

.field public final i:LG3/u;

.field public final j:F

.field public final k:Ljava/util/ArrayList;

.field public final l:LF3/b;

.field public final m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;LG3/f;LF3/a;LF3/a;LF3/a;LF3/a;LF3/b;LG3/t;LG3/u;FLjava/util/ArrayList;LF3/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG3/e;->a:Ljava/lang/String;

    iput-object p2, p0, LG3/e;->b:LG3/f;

    iput-object p3, p0, LG3/e;->c:LF3/a;

    iput-object p4, p0, LG3/e;->d:LF3/a;

    iput-object p5, p0, LG3/e;->e:LF3/a;

    iput-object p6, p0, LG3/e;->f:LF3/a;

    iput-object p7, p0, LG3/e;->g:LF3/b;

    iput-object p8, p0, LG3/e;->h:LG3/t;

    iput-object p9, p0, LG3/e;->i:LG3/u;

    iput p10, p0, LG3/e;->j:F

    iput-object p11, p0, LG3/e;->k:Ljava/util/ArrayList;

    iput-object p12, p0, LG3/e;->l:LF3/b;

    iput-boolean p13, p0, LG3/e;->m:Z

    return-void
.end method


# virtual methods
.method public final a(Lz3/t;Lz3/g;LH3/c;)LB3/d;
    .locals 0

    new-instance p2, LB3/j;

    invoke-direct {p2, p1, p3, p0}, LB3/j;-><init>(Lz3/t;LH3/c;LG3/e;)V

    return-object p2
.end method
