.class public Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;
.super Landroid/view/View;
.source "FalsifyHeader.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/a/e;


# instance fields
.field protected a:Lcom/scwang/smartrefresh/layout/a/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ae;
        a = 0x15
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    return-void
.end method


# virtual methods
.method public a(Lcom/scwang/smartrefresh/layout/a/h;Z)I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public a(FII)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public a(FIII)V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public a(Lcom/scwang/smartrefresh/layout/a/g;II)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;->a:Lcom/scwang/smartrefresh/layout/a/g;

    .line 93
    return-void
.end method

.method public a(Lcom/scwang/smartrefresh/layout/a/h;II)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;->a:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;->a:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/g;->m()Lcom/scwang/smartrefresh/layout/a/g;

    .line 119
    :cond_0
    return-void
.end method

.method public a(Lcom/scwang/smartrefresh/layout/a/h;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public b_(FIII)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->b:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 139
    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    const v9, 0x44ffffff    # 2047.9999f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/d/c;->a(F)I

    move-result v0

    .line 69
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 70
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    invoke-static {v7}, Lcom/scwang/smartrefresh/layout/d/c;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x4

    new-array v2, v2, [F

    int-to-float v3, v0

    aput v3, v2, v6

    const/4 v3, 0x1

    int-to-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x2

    int-to-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x3

    int-to-float v4, v0

    aput v4, v2, v3

    invoke-direct {v1, v2, v7}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 74
    int-to-float v1, v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;->getBottom()I

    move-result v4

    sub-int v0, v4, v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 76
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u865a\u5047\u533a\u57df\n\u8fd0\u884c\u65f6\u4ee3\u8868\u4e0b\u62c9Header\u7684\u9ad8\u5ea6\u3010"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/scwang/smartrefresh/layout/d/c;->b(F)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dp\u3011\n\u800c\u4e0d\u4f1a\u663e\u793a\u4efb\u4f55\u4e1c\u897f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 80
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;->getWidth()I

    move-result v1

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;->getHeight()I

    move-result v2

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 81
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;->getHeight()I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 82
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 84
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;->resolveSize(II)I

    move-result v0

    .line 60
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;->resolveSize(II)I

    move-result v1

    .line 59
    invoke-virtual {p0, v0, v1}, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;->setMeasuredDimension(II)V

    .line 61
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    return-void
.end method
