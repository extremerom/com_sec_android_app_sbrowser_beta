.class public final LJc/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJc/l;
.implements LJc/e;


# static fields
.field public static final a:LJc/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LJc/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LJc/f;->a:LJc/f;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(I)LJc/l;
    .locals 0

    sget-object p0, LJc/f;->a:LJc/f;

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    sget-object p0, Lfb/u;->a:Lfb/u;

    return-object p0
.end method
