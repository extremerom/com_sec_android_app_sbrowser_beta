.class public final LPc/v;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# static fields
.field public static final a:LPc/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LPc/v;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltb/m;-><init>(I)V

    sput-object v0, LPc/v;->a:LPc/v;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
