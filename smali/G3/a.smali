.class public final LG3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG3/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:LF3/e;

.field public final c:LF3/a;

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;LF3/e;LF3/a;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG3/a;->a:Ljava/lang/String;

    iput-object p2, p0, LG3/a;->b:LF3/e;

    iput-object p3, p0, LG3/a;->c:LF3/a;

    iput-boolean p4, p0, LG3/a;->d:Z

    iput-boolean p5, p0, LG3/a;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Lz3/t;Lz3/g;LH3/c;)LB3/d;
    .locals 0

    new-instance p2, LB3/g;

    invoke-direct {p2, p1, p3, p0}, LB3/g;-><init>(Lz3/t;LH3/c;LG3/a;)V

    return-object p2
.end method
