.class public final LG3/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG3/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:LF3/b;

.field public final c:Ljava/util/ArrayList;

.field public final d:LF3/a;

.field public final e:LF3/a;

.field public final f:LF3/b;

.field public final g:LG3/t;

.field public final h:LG3/u;

.field public final i:F

.field public final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;LF3/b;Ljava/util/ArrayList;LF3/a;LF3/a;LF3/b;LG3/t;LG3/u;FZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG3/v;->a:Ljava/lang/String;

    iput-object p2, p0, LG3/v;->b:LF3/b;

    iput-object p3, p0, LG3/v;->c:Ljava/util/ArrayList;

    iput-object p4, p0, LG3/v;->d:LF3/a;

    iput-object p5, p0, LG3/v;->e:LF3/a;

    iput-object p6, p0, LG3/v;->f:LF3/b;

    iput-object p7, p0, LG3/v;->g:LG3/t;

    iput-object p8, p0, LG3/v;->h:LG3/u;

    iput p9, p0, LG3/v;->i:F

    iput-boolean p10, p0, LG3/v;->j:Z

    return-void
.end method


# virtual methods
.method public final a(Lz3/t;Lz3/g;LH3/c;)LB3/d;
    .locals 0

    new-instance p2, LB3/v;

    invoke-direct {p2, p1, p3, p0}, LB3/v;-><init>(Lz3/t;LH3/c;LG3/v;)V

    return-object p2
.end method
