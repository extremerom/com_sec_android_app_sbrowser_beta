.class public abstract Ld4/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LQ3/j;

.field public static final b:LQ3/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    sget-object v1, LQ3/b;->DEFAULT:LQ3/b;

    invoke-static {v1, v0}, LQ3/j;->a(Ljava/lang/Object;Ljava/lang/String;)LQ3/j;

    move-result-object v0

    sput-object v0, Ld4/g;->a:LQ3/j;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    invoke-static {v0, v1}, LQ3/j;->a(Ljava/lang/Object;Ljava/lang/String;)LQ3/j;

    move-result-object v0

    sput-object v0, Ld4/g;->b:LQ3/j;

    return-void
.end method
