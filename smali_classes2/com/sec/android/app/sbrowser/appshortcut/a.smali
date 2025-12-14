.class public final synthetic Lcom/sec/android/app/sbrowser/appshortcut/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;

.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Landroid/graphics/Bitmap;

.field public final synthetic h:Z

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/appshortcut/a;->a:Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/appshortcut/a;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/appshortcut/a;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/appshortcut/a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/appshortcut/a;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/appshortcut/a;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/appshortcut/a;->g:Landroid/graphics/Bitmap;

    iput-boolean p8, p0, Lcom/sec/android/app/sbrowser/appshortcut/a;->h:Z

    iput p9, p0, Lcom/sec/android/app/sbrowser/appshortcut/a;->i:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/appshortcut/a;->b:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/appshortcut/a;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/appshortcut/a;->g:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/appshortcut/a;->a:Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/appshortcut/a;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/appshortcut/a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/appshortcut/a;->e:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/sec/android/app/sbrowser/appshortcut/a;->h:Z

    iget v8, p0, Lcom/sec/android/app/sbrowser/appshortcut/a;->i:I

    move-object v9, p1

    move v10, p2

    invoke-static/range {v0 .. v10}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->c(Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZILandroid/content/DialogInterface;I)V

    return-void
.end method
