.class public final LG3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG3/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:LG3/k;

.field public final c:LF3/b;

.field public final d:LF3/e;

.field public final e:LF3/b;

.field public final f:LF3/b;

.field public final g:LF3/b;

.field public final h:LF3/b;

.field public final i:LF3/b;

.field public final j:Z

.field public final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;LG3/k;LF3/b;LF3/e;LF3/b;LF3/b;LF3/b;LF3/b;LF3/b;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG3/l;->a:Ljava/lang/String;

    iput-object p2, p0, LG3/l;->b:LG3/k;

    iput-object p3, p0, LG3/l;->c:LF3/b;

    iput-object p4, p0, LG3/l;->d:LF3/e;

    iput-object p5, p0, LG3/l;->e:LF3/b;

    iput-object p6, p0, LG3/l;->f:LF3/b;

    iput-object p7, p0, LG3/l;->g:LF3/b;

    iput-object p8, p0, LG3/l;->h:LF3/b;

    iput-object p9, p0, LG3/l;->i:LF3/b;

    iput-boolean p10, p0, LG3/l;->j:Z

    iput-boolean p11, p0, LG3/l;->k:Z

    return-void
.end method


# virtual methods
.method public final a(Lz3/t;Lz3/g;LH3/c;)LB3/d;
    .locals 0

    new-instance p2, LB3/q;

    invoke-direct {p2, p1, p3, p0}, LB3/q;-><init>(Lz3/t;LH3/c;LG3/l;)V

    return-object p2
.end method
