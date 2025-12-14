.class public final LV/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV/z;


# static fields
.field public static final a:LV/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LV/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LV/d;->a:LV/d;

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final d()Ljava/util/List;
    .locals 0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method
