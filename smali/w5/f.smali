.class public final Lw5/f;
.super Lb5/j;
.source "SourceFile"

# interfaces
.implements LV4/a;


# static fields
.field public static final a:Lb5/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb5/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, LA5/v;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, LA5/v;-><init>(I)V

    new-instance v2, Lb5/g;

    const-string v3, "SmsCodeBrowser.API"

    invoke-direct {v2, v3, v1, v0}, Lb5/g;-><init>(Ljava/lang/String;Lb5/a;Lb5/f;)V

    sput-object v2, Lw5/f;->a:Lb5/g;

    return-void
.end method
