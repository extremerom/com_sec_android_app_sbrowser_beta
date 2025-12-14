.class public final Li6/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:LF6/a;


# instance fields
.field public final a:LF6/c;

.field public final b:LF6/c;

.field public final c:LF6/c;

.field public final d:LF6/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LF6/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF6/a;-><init>(F)V

    sput-object v0, Li6/d;->e:LF6/a;

    return-void
.end method

.method public constructor <init>(LF6/c;LF6/c;LF6/c;LF6/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li6/d;->a:LF6/c;

    iput-object p3, p0, Li6/d;->b:LF6/c;

    iput-object p4, p0, Li6/d;->c:LF6/c;

    iput-object p2, p0, Li6/d;->d:LF6/c;

    return-void
.end method
