.class public final LNc/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LNc/d0;


# instance fields
.field public final a:LNc/x0;


# direct methods
.method public constructor <init>(LNc/x0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LNc/c0;->a:LNc/x0;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getList()LNc/x0;
    .locals 0

    iget-object p0, p0, LNc/c0;->a:LNc/x0;

    return-object p0
.end method
