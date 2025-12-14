.class public final LG3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG3/b;


# instance fields
.field public final a:LF3/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;LF3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LG3/n;->a:LF3/b;

    return-void
.end method


# virtual methods
.method public final a(Lz3/t;Lz3/g;LH3/c;)LB3/d;
    .locals 0

    new-instance p2, LB3/t;

    invoke-direct {p2, p1, p3, p0}, LB3/t;-><init>(Lz3/t;LH3/c;LG3/n;)V

    return-object p2
.end method
