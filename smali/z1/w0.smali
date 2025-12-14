.class public final synthetic Lz1/w0;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lz1/w0;

    const-string v5, "<init>()V"

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-class v3, Lz1/I;

    const-string v4, "<init>"

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lz1/I;

    invoke-direct {p0}, Lz1/I;-><init>()V

    return-object p0
.end method
