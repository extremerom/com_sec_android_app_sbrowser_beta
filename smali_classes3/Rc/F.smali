.class public final LRc/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;


# static fields
.field public static final a:LRc/F;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LRc/F;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LRc/F;->a:LRc/F;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
