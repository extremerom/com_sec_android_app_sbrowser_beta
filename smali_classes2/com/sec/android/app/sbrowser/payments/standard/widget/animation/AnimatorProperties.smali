.class public Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/AnimatorProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DRAWABLE_ALPHA_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/AnimatorProperties$1;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "alpha"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/AnimatorProperties$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/AnimatorProperties;->DRAWABLE_ALPHA_PROPERTY:Landroid/util/Property;

    return-void
.end method
