.class public final synthetic LK1/v;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# static fields
.field public static final a:LK1/v;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, LK1/v;

    const-string v5, "<init>()V"

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-class v3, LK1/o;

    const-string v4, "<init>"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, LK1/v;->a:LK1/v;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    new-instance p0, LK1/o;

    invoke-direct {p0}, LK1/o;-><init>()V

    return-object p0
.end method
