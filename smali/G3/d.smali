.class public final LG3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG3/b;


# instance fields
.field public final a:LG3/f;

.field public final b:Landroid/graphics/Path$FillType;

.field public final c:LF3/a;

.field public final d:LF3/a;

.field public final e:LF3/a;

.field public final f:LF3/a;

.field public final g:Ljava/lang/String;

.field public final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;LG3/f;Landroid/graphics/Path$FillType;LF3/a;LF3/a;LF3/a;LF3/a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LG3/d;->a:LG3/f;

    iput-object p3, p0, LG3/d;->b:Landroid/graphics/Path$FillType;

    iput-object p4, p0, LG3/d;->c:LF3/a;

    iput-object p5, p0, LG3/d;->d:LF3/a;

    iput-object p6, p0, LG3/d;->e:LF3/a;

    iput-object p7, p0, LG3/d;->f:LF3/a;

    iput-object p1, p0, LG3/d;->g:Ljava/lang/String;

    iput-boolean p8, p0, LG3/d;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Lz3/t;Lz3/g;LH3/c;)LB3/d;
    .locals 1

    new-instance v0, LB3/i;

    invoke-direct {v0, p1, p2, p3, p0}, LB3/i;-><init>(Lz3/t;Lz3/g;LH3/c;LG3/d;)V

    return-object v0
.end method
