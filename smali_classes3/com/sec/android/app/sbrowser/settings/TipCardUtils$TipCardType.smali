.class public final enum Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/TipCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TipCardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;

.field public static final enum SET_AS_DEFAULT:Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;


# instance fields
.field private mValue:I


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;->SET_AS_DEFAULT:Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;

    filled-new-array {v0}, [Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "SET_AS_DEFAULT"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;->SET_AS_DEFAULT:Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;->$values()[Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;->$VALUES:[Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;->$VALUES:[Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;

    return-object v0
.end method
